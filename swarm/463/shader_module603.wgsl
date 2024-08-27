struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 30221i;

var<private> global1: i32 = 26466i;

var<private> global2: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(vec2<i32>(global2.a.d.a.x, _wgslsmith_add_i32(~(-2147483647i), global2.a.d.a.x)));
    global1 = -52181i;
    return Struct_1(abs(select(_wgslsmith_sub_vec3_i32(global2.a.d.a, u_input.a.zxz), global2.a.d.a, !(!vec3<bool>(false, global2.b, global2.b)))));
}

fn func_1() -> Struct_1 {
    global2 = Struct_3(global2.a, all(vec3<bool>(any(vec3<bool>(true, true, true)), (u_input.a.x | u_input.c) != min(global2.a.c, u_input.c), false)), _wgslsmith_f_op_f32(f32(-1f) * -242f), 722f, -800f);
    var var_0 = _wgslsmith_div_vec2_i32(global2.a.d.a.zz, global2.a.d.a.yy);
    var var_1 = Struct_4(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, ~global2.a.d.a.x, ~(-1i)), countOneBits(vec3<i32>(38896i, 0i, -1i)) >> (u_input.b % vec3<u32>(32u)))), (min(_wgslsmith_div_u32(4294967295u, u_input.b.x), _wgslsmith_mod_u32(64460u, u_input.b.x)) ^ (~10712u & ~u_input.b.x)) & reverseBits(1u), select(vec2<bool>(true, all(select(vec2<bool>(global2.b, true), vec2<bool>(global2.b, false), true))), select(select(vec2<bool>(global2.b, global2.b), !vec2<bool>(true, global2.b), false), vec2<bool>(!global2.b, global2.b), global2.b), any(select(!vec4<bool>(true, true, global2.b, true), !vec4<bool>(true, true, global2.b, true), global2.b))), global2.a.d.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.a), _wgslsmith_f_op_f32(global2.e * global2.d))), _wgslsmith_f_op_f32(ceil(global2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))));
    let var_3 = u_input.b.yz;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1();
    var var_2 = ~71i;
    let var_3 = Struct_4(func_1(), 31150u, vec2<bool>((~(-2147483647i) & (global2.a.c >> (u_input.b.x % 32u))) > var_1.a.x, !any(vec4<bool>(true, true, true, true))), -11448i);
    let var_4 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global2.a.a))))), select(vec4<u32>(var_3.b | var_3.b, 4294967295u, ~27508u, 4294967295u << (u_input.b.x % 32u)) >> (max(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b, 35946u, var_3.b, u_input.b.x), vec4<u32>(u_input.b.x, var_3.b, var_3.b, 96728u)), ~vec4<u32>(76936u, 1u, 1u, 13527u)) % vec4<u32>(32u)), abs(~vec4<u32>(1u, var_3.b, 4294967295u, 17236u)) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, var_3.b, var_3.b), vec4<u32>(1u, 51404u, u_input.b.x, u_input.b.x)), ~vec4<u32>(var_3.b, 1u, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.b, u_input.b.x, 1u, 0u), vec4<u32>(1u, var_3.b, 4294967295u, u_input.b.x), vec4<u32>(1u, 47087u, var_3.b, 0u))) % vec4<u32>(32u)), all(vec3<bool>(true, true, true & var_3.c.x))), var_3.b, ~reverseBits((vec2<u32>(u_input.b.x, u_input.b.x) & vec2<u32>(13668u, u_input.b.x)) >> (firstTrailingBit(u_input.b.xy) % vec2<u32>(32u))), 4294967295u);
}

