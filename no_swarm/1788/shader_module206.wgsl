struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<f32, 17>;

var<private> global3: Struct_2;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: u32) -> bool {
    let var_0 = arg_1;
    return any(select(!(!vec3<bool>(false, var_0.a.a, arg_1.a.a)), arg_0.zxy, true));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(any(vec4<bool>(func_3(vec4<bool>(global1.a, global1.a, global1.a, global1.a), Struct_2(Struct_1(false)), vec2<i32>(u_input.e, 0i), u_input.b.x), func_3(vec4<bool>(false, global3.a.a, true, false), Struct_2(global3.a), vec2<i32>(2147483647i, -46638i), u_input.a), global2[_wgslsmith_index_u32(u_input.b.x, 17u)] > 949f, true))));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(u_input.a, 7u)]);
    var var_2 = var_1.a;
    var var_3 = Struct_2(Struct_1(true));
    global3 = Struct_2(Struct_1(global1.a));
    return Struct_2(Struct_1(false));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 7>();
    var var_0 = min(vec2<u32>(0u, u_input.a), min(_wgslsmith_mult_vec2_u32(vec2<u32>(~6420u, u_input.d.x), ~_wgslsmith_sub_vec2_u32(u_input.b.wy, vec2<u32>(u_input.b.x, u_input.d.x))), min(vec2<u32>(4294967295u, min(u_input.b.x, 4294967295u)), u_input.b.zx)));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~4294967295u, _wgslsmith_div_u32(var_0.x, _wgslsmith_div_u32(129172u, var_0.x)) & ~(~var_0.x)), 17u)];
    var var_2 = func_2();
    global3 = func_2();
    return _wgslsmith_mult_i32(reverseBits(u_input.e), reverseBits(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(!any(select(vec4<bool>(false, true, global3.a.a, global1.a), vec4<bool>(false, global3.a.a, global1.a, false), true))), all(!vec4<bool>(any(vec4<bool>(global1.a, global1.a, global3.a.a, true)), true, global3.a.a, false)), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(select(45914u, 57071u, false), u_input.d.x ^ 10016u), 17u)] > global2[_wgslsmith_index_u32(4294967295u, 17u)], !(!all(!vec3<bool>(global1.a, global3.a.a, global3.a.a))));
    var var_1 = Struct_4(Struct_2(Struct_1(false)), -vec3<i32>(_wgslsmith_sub_i32(u_input.e | 2147483647i, 45673i), (i32(-1i) * -55256i) & firstLeadingBit(u_input.c.x), i32(-1i) * -u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -111f), min(-abs(~vec4<i32>(-1i, 0i, u_input.c.x, var_1.b.x)), vec4<i32>(u_input.c.x ^ (u_input.c.x << (0u % 32u)), abs(var_1.b.x << (23415u % 32u)), func_1(), _wgslsmith_mult_i32(var_1.b.x, abs(-1i)))), -248f, ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.b, vec3<i32>(33167i, u_input.e, 2147483647i)), var_1.b) & min(var_1.b, ~firstLeadingBit(var_1.b)), 28116u);
}

