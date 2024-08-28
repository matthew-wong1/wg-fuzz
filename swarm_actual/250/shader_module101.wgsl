struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 0u, 696u);

var<private> global1: Struct_4;

var<private> global2: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(-32929i, 0i), vec2<i32>(-1i, 8134i), vec2<i32>(0i, -15681i), vec2<i32>(23026i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -17107i), vec2<i32>(i32(-2147483648), -469i), vec2<i32>(33928i, 27016i), vec2<i32>(-12i, 2147483647i), vec2<i32>(2147483647i, 2147483647i));

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global4: f32 = 680f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = !global3.wz;
    var var_1 = ~global0.x;
    let var_2 = true;
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(2141f)), _wgslsmith_f_op_f32(max(191f, -1913f)), -1938f, -529f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, -284f, global1.c, global1.c))), !(!(!vec4<bool>(true, false, var_0.x, true))))), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(122f * global1.a.x)))) * -210f), Struct_1(_wgslsmith_f_op_f32(min(-923f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c))))), select(u_input.b, reverseBits(global1.d.b), !vec3<bool>(global3.x, var_0.x, var_0.x))), _wgslsmith_add_i32(-1687i, global1.b));
    global0 = ~(~vec3<u32>(22208u, _wgslsmith_dot_vec2_u32(vec2<u32>(25808u, 0u), ~vec2<u32>(u_input.a, 0u)), ~_wgslsmith_add_u32(1u, 0u)));
    return var_3.d;
}

fn func_1() -> f32 {
    var var_0 = global1.d;
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))), global1.b, var_0.a, func_2(1u), var_0.b.x >> (global0.x % 32u));
    global4 = -1260f;
    var var_2 = var_0.a;
    var var_3 = Struct_2(func_2(~(~(~16921u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(639f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + var_3.a.a));
}

fn func_3() -> f32 {
    var var_0 = vec3<u32>(~max(~4294967295u, _wgslsmith_mod_u32(56036u, 14258u)) ^ ~abs(global0.x ^ global0.x), _wgslsmith_dot_vec2_u32(abs(global0.xx ^ global0.xz), global0.yx) & _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 17059u, u_input.a)), ~vec3<u32>(0u, u_input.a, u_input.a)), abs(~u_input.a));
    var_0 = firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(33425u, 29882u), global0.xx, global3.ww), ~var_0.zx), 1u, max(_wgslsmith_add_u32(u_input.a, 41225u), 72903u)), max(abs(vec3<u32>(u_input.a, u_input.a, 49618u)), ~(~vec3<u32>(81866u, u_input.a, 82541u)))));
    let var_1 = global1.a;
    global1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524f * global1.d.a)), -1336f, 533f, -911f)), 42801i, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1027f, var_1.x))), Struct_1(-1880f, u_input.b & u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-(i32(-1i) * -45078i), -2147483647i, countOneBits(_wgslsmith_mult_i32(-1i, 13990i)), -firstTrailingBit(-2147483647i)), _wgslsmith_mod_vec4_i32(select(-vec4<i32>(global1.e, 40670i, global1.d.b.x, global1.d.b.x), vec4<i32>(global1.e, -815i, u_input.b.x, global1.b) ^ vec4<i32>(-18777i, -1156i, -33781i, u_input.b.x), false), firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b.x, -43307i, 31281i, global1.b))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, global1.c), vec2<f32>(var_1.x, global1.d.a))))))) - vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, 1087f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1401f), _wgslsmith_f_op_f32(global1.a.x + -571f))), var_1.xw, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(195f, 658f)))) + global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(ceil(global1.c)) == global1.a.x);
    global2 = array<vec2<i32>, 10>();
    var var_1 = select(global3.wxz, global3.zzz, select(global3.xzz, !global3.zwy, var_0));
    var var_2 = vec2<bool>(!any(select(!vec4<bool>(global3.x, true, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_0, false), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(true, var_1.x, var_0, true)), global3.x)), !global3.x);
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(ceil(-1000f))), global1.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c - 288f), _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(abs(-1026f))))), -80356i ^ ~_wgslsmith_add_i32(u_input.b.x, -1i), 1f);
    let var_4 = !select(vec4<bool>(false, _wgslsmith_f_op_f32(round(var_3.b)) == -611f, !all(vec3<bool>(var_0, false, var_0)), false), !vec4<bool>(false, !var_1.x, true, all(vec3<bool>(global3.x, global3.x, var_0))), !any(vec2<bool>(global3.x, true)) & var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(63048i >> (~global0.x % 32u)), ~(-999i), -2147483647i, -1i));
}

