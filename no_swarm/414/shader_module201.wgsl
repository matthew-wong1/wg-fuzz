struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(1495f, -177f, -275f, 326f, 1605f, 586f, -675f, 1736f, -643f, -331f, -1564f, 1000f, 846f, 1806f);

var<private> global1: array<i32, 6>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<bool>(true, false), false), Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(true, false), false), Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(false, false), false), Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(true, false), false), Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(true, false), false), Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(false, true), true), Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(false, true), true), Struct_1(vec2<bool>(false, false), true), Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(true, false), true), Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(false, true), true), Struct_1(vec2<bool>(true, true), true), Struct_1(vec2<bool>(true, true), true), Struct_1(vec2<bool>(false, false), false), Struct_1(vec2<bool>(true, true), true), Struct_1(vec2<bool>(false, true), false), Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(false, false), false), Struct_1(vec2<bool>(false, false), true), Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(true, true), true));

var<private> global3: i32 = 11362i;

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> vec2<f32> {
    global1 = array<i32, 6>();
    global4 = -1394f;
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x, abs(u_input.c.x ^ u_input.c.x)) ^ u_input.b.x, 32u)], !select(select(select(vec4<bool>(true, arg_2.d.b, false, true), arg_2.c.b, arg_2.d.b), !arg_2.c.b, !arg_2.d.b), arg_2.c.b, true), vec4<i32>(arg_0.x, abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, ~u_input.b.x), 6u)]), 1i, -1i));
    var_0 = arg_2.c;
    global3 = u_input.a;
    return arg_2.b.wy;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x | u_input.b.x, ~72053u), 14u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], 1297f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)], -22707i), global0[_wgslsmith_index_u32(~u_input.c.x, 14u)], Struct_3(vec2<f32>(global0[_wgslsmith_index_u32(1u, 14u)], 287f), vec4<f32>(-1294f, 1000f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 2655f), Struct_2(Struct_1(vec2<bool>(false, false), true), vec4<bool>(false, false, true, true), vec4<i32>(42310i, global1[_wgslsmith_index_u32(92788u, 6u)], u_input.a, u_input.a)), global2[_wgslsmith_index_u32(0u, 32u)]), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(11854u, 6u)]))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 292f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 14u)]) * -833f), global0[_wgslsmith_index_u32(~33426u, 14u)], -358f, global0[_wgslsmith_index_u32(u_input.c.x, 14u)])), Struct_2(global2[_wgslsmith_index_u32(12791u, 32u)], vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), true, !any(vec2<bool>(false, false)), any(vec2<bool>(false, true))), vec4<i32>(-(u_input.a ^ -20633i), abs(_wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 6u)])), -u_input.a >> (~4294967295u % 32u), -22346i)), Struct_1(vec2<bool>(u_input.c.x == u_input.b.x, true), all(vec3<bool>(true, true, true))));
    global3 = u_input.a;
    global3 = global1[_wgslsmith_index_u32(34711u, 6u)];
    let var_1 = any(select(!select(select(vec3<bool>(var_0.c.a.a.x, var_0.c.b.x, true), var_0.c.b.wzx, var_0.c.a.a.x), vec3<bool>(var_0.c.b.x, true, false), !var_0.c.a.b), !vec3<bool>(all(var_0.c.b.yzw), true, false), any(!select(var_0.c.b, vec4<bool>(var_0.c.b.x, true, false, var_0.d.a.x), vec4<bool>(true, var_0.d.b, var_0.d.a.x, false)))));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(689f)), _wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(6621u, 14u)] * -862f), _wgslsmith_f_op_f32(max(454f, -897f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, var_0.b)))))), Struct_2(global2[_wgslsmith_index_u32(~u_input.c.x, 32u)], var_0.c.b, ~var_0.c.c), var_0.d);
    return var_0.c.c;
}

fn func_1() -> u32 {
    global1 = array<i32, 6>();
    var var_0 = Struct_2(Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), false))), !(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))), -(firstLeadingBit(func_2()) << ((countOneBits(u_input.b) << (_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(4188u, u_input.c.x, 1u, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global3 = _wgslsmith_sub_i32(0i, min(-2144i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstLeadingBit(u_input.a), var_0.c.x), 40427i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-344f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.zw), 14u)], global0[_wgslsmith_index_u32(18718u, 14u)]) + vec3<f32>(-1229f, global0[_wgslsmith_index_u32(35212u, 14u)], _wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(global1[_wgslsmith_index_u32(63020u, 6u)], 2147483647i, 1i, global1[_wgslsmith_index_u32(u_input.c.x, 6u)]), 813f, Struct_3(vec2<f32>(-997f, global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<f32>(-321f, global0[_wgslsmith_index_u32(u_input.c.x, 14u)], 1570f, global0[_wgslsmith_index_u32(26361u, 14u)]), Struct_2(Struct_1(vec2<bool>(var_0.a.a.x, false), var_0.b.x), vec4<bool>(false, var_0.b.x, true, var_0.b.x), vec4<i32>(var_0.c.x, 49362i, 1i, -2147483647i)), global2[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec2<i32>(global1[_wgslsmith_index_u32(0u, 6u)], -1i))).x))));
    var var_2 = vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1189f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)] - 1000f)), _wgslsmith_div_f32(-149f, var_1.x))))));
    return 23910u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -2147483647i;
    let var_0 = -3990i;
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-132f - -426f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-690f)) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 14u)]))))));
    var var_1 = global2[_wgslsmith_index_u32(func_1(), 32u)];
    var var_2 = vec3<bool>(true, !any(vec4<bool>(var_1.b, var_1.a.x != var_1.a.x, false, true)), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.c.x, reverseBits(abs(u_input.b.x << (u_input.b.x % 32u)))), select(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -var_0), ~(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 6u)]) | vec2<i32>(u_input.a, u_input.a))), (~vec2<i32>(u_input.a, -59075i) << (~u_input.c % vec2<u32>(32u))) & ~(~vec2<i32>(var_0, -728i)), var_2.x));
}

