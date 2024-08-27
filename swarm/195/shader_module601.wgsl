struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<i32>(-28523i, 10078i, -1i), vec4<i32>(10016i, -59272i, 2147483647i, i32(-2147483648)), vec4<u32>(11166u, 1u, 4294967295u, 37604u));

var<private> global1: array<Struct_5, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> bool {
    global1 = array<Struct_5, 28>();
    return true;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(false, vec3<u32>(~51564u, ~firstTrailingBit(0u), 4294967295u), ~(~1u), vec3<bool>(false, true, true), global0.c.x));
    var var_1 = min(vec4<u32>(u_input.b.x, ~113199u, 12229u, 29206u), global0.c);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, global0.c.x & (1u | _wgslsmith_div_u32(4294967295u, var_1.x))), 28u)];
    var var_2 = select(vec2<bool>(var_0.a.a, var_0.a.d.x), var_0.a.d.yz, func_2());
    global1 = array<Struct_5, 28>();
    return var_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_add_i32(-(~(~2147483647i)), arg_1.x), func_1(4294967295u), ~abs(u_input.c.x), global0.a.x);
    var var_1 = abs(9575u >> (((global0.c.x ^ ~u_input.b.x) ^ ~(~var_0.b.a.e)) % 32u));
    global1 = array<Struct_5, 28>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 28u)];
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, global0.b.x), global0.b.x), u_input.c.x);
    return 4889u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(72849u);
    global1 = array<Struct_5, 28>();
    var var_1 = var_0.a.d.x;
    var var_2 = _wgslsmith_mult_vec2_i32(u_input.c, global0.b.zz);
    global1 = array<Struct_5, 28>();
    let var_3 = Struct_1(false, vec3<u32>(global0.c.x, ~global0.c.x, func_3(select(var_0.a.d, vec3<bool>(var_0.a.d.x, var_0.a.d.x, true), var_0.a.d), min(global0.b, global0.b))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_0.a.c, 4294967295u, global0.c.x)), global0.c.wxy), var_0.a.b), var_0.a.d, 4294967295u);
    let var_4 = Struct_3(-u_input.c.x << (~(~1u) % 32u), var_0, -var_2.x, 1i & ~global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_vec2_i32(u_input.c, min(vec2<i32>(var_4.c, -26248i), vec2<i32>(34261i, 27780i)), ~vec2<i32>(var_4.c, -2147483647i)) ^ countOneBits(vec2<i32>(var_4.c, 10948i) | vec2<i32>(31312i, var_2.x))), reverseBits(-((u_input.c ^ global0.b.zx) << ((var_0.a.b.xy ^ vec2<u32>(global0.c.x, 4294967295u)) % vec2<u32>(32u)))));
}

