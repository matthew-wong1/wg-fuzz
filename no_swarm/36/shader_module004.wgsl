struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 10>;

var<private> global2: array<i32, 2> = array<i32, 2>(2161i, -30247i);

var<private> global3: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_2.a.wwx << (~(min(vec3<u32>(0u, 31013u, 0u) ^ vec3<u32>(u_input.a, u_input.a, arg_1.x), _wgslsmith_mult_vec3_u32(arg_1, arg_1)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(25450u, 4294967295u, 36182u), arg_1), ~arg_1) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = 2266u;
    global2 = array<i32, 2>();
    global1 = array<i32, 10>();
    var_1 = arg_1.x;
    return -1531f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, true, false), vec3<u32>(1u, 64346u, 0u), Struct_2(vec4<i32>(-12911i, 0i, 0i, global2[_wgslsmith_index_u32(0u, 2u)])))) * -1200f), -316f) * -100f), 1f));
    global3 = ~(-1i | _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<i32>(-1i, global1[_wgslsmith_index_u32(9940u, 10u)], global2[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<i32>(-71131i, global0.x, global1[_wgslsmith_index_u32(u_input.a, 10u)])), countOneBits(vec3<i32>(global0.x, 0i, -82701i)))) & _wgslsmith_dot_vec2_i32(global0.xy, ~(-global0.zy));
    var var_1 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(379f, var_0, 1000f) * vec3<f32>(-1000f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, 1548f, 493f)))))), Struct_1(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * var_0)), Struct_2(~vec4<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 10u)]), global0.x, global2[_wgslsmith_index_u32(u_input.a, 2u)] << (37853u % 32u), -1i)), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 1000f, 1636f, var_0))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-107f, var_0, 1012f, -1178f), vec4<f32>(var_0, 1000f, 139f, var_0), true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 741f, var_0)))));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.e.zzw, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.b, var_1.a.x, 186f), var_1.e.yzw)))) - vec3<f32>(var_1.b.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0)), -604f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), var_1.b, var_1.c, u_input.a, _wgslsmith_f_op_vec4_f32(floor(var_1.e)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), vec3<u32>(13514u, var_1.d, var_1.d), Struct_2(vec4<i32>(-38407i, global2[_wgslsmith_index_u32(u_input.a, 2u)], 1i, 0i))))), _wgslsmith_f_op_f32(max(602f, _wgslsmith_f_op_f32(f32(-1f) * -252f))))), var_1.b, var_1.c, u_input.a << (_wgslsmith_add_u32(reverseBits(0u), u_input.a) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2495f, 704f, var_1.a.x, var_0)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b) + var_0), var_1.b.b, _wgslsmith_f_op_f32(632f * _wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.b, var_1.a.x))))));
    return Struct_2(abs(_wgslsmith_add_vec4_i32(var_2.c.a << (vec4<u32>(1u, var_1.d, var_1.d, var_1.d) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(var_2.c.a, -var_1.c.a))));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = func_2();
    global0 = select(vec3<i32>(1i, func_2().a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~4294967295u, 2u)], global0.x), -59460i)), vec3<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~0u, 10u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u) | 1u, 10u)]), -firstLeadingBit(4570i), var_0.a.x), true);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f))))), Struct_1(0i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1615f) + _wgslsmith_div_f32(2039f, -730f))))), Struct_2(var_0.a), _wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_mult_u32(u_input.a, u_input.a)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(34652u, u_input.a, u_input.a), ~u_input.a) ^ reverseBits(~1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1786f, -1000f, -1968f, 218f) * vec4<f32>(-1457f, -904f, 282f, -783f)) - vec4<f32>(1000f, -1612f, 1563f, -148f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(186f, 932f, 899f, 1519f)))))));
    var var_2 = -22804i;
    var var_3 = func_2();
    return _wgslsmith_div_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(1u, u_input.a)), ~(~vec2<u32>(112001u, 49984u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, global1[_wgslsmith_index_u32(22284u, 10u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 2u)], -1i, 0i))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 99977u), vec3<u32>(1u, u_input.a, 1994u)), vec3<u32>(71044u, 17320u, 1u))), u_input.a, 0u));
}

