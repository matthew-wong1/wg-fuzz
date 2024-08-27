struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(18854u, 41589u, 4294967295u, 4294967295u, 57649u, 49489u, 0u, 1u, 0u, 15237u);

var<private> global1: array<bool, 2> = array<bool, 2>(true, true);

var<private> global2: array<bool, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    global2 = array<bool, 5>();
    global0 = array<u32, 10>();
    let var_0 = vec3<bool>((u_input.a ^ -_wgslsmith_mult_i32(u_input.a, -2147483647i)) >= _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.a, 1i) & vec2<i32>(u_input.a, u_input.a)), reverseBits(-vec2<i32>(14660i, -30111i))), true, all(vec2<bool>(true, arg_0.b.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-842f, 439f, -885f, -165f), vec4<f32>(192f, 431f, -605f, -1000f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1074f, -218f, 588f, -522f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-235f, -701f, 572f, 1469f)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-741f, 1549f, 161f, -1135f))))))));
    var var_2 = var_1.x;
    return var_0.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(true), vec3<bool>(_wgslsmith_f_op_f32(-2085f - 911f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-483f - 1531f))), true, !(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], u_input.b, 12103u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(37561u, 10u)], 1u)) >= ~global0[_wgslsmith_index_u32(1u, 10u)])), all(vec2<bool>(true, true)), !(func_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(62081u, 5u)]), vec3<bool>(true, false, true), true, false), ~vec2<u32>(24262u, u_input.b), Struct_2(Struct_1(true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 5u)], false), global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)])) && !(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 5u)] == false)));
    global0 = array<u32, 10>();
    let var_1 = !select(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 5u)], false, false), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 5u)]), !vec4<bool>(var_0.b.x, global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)], false)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], false, global1[_wgslsmith_index_u32(87283u, 2u)], true), true), vec4<bool>(var_0.d, false, global1[_wgslsmith_index_u32(4294967295u, 2u)], all(var_0.b.yz)), vec4<bool>(all(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(1u, 5u)], var_0.d, global1[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<bool>(false, var_0.a.a, var_0.b.x, var_0.a.a), true)), var_0.d, false, true));
    var var_2 = _wgslsmith_mult_i32(i32(-1i) * -29753i, ~u_input.a);
    global1 = array<bool, 2>();
    return var_0.a;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-575f, -723f, 282f, 1894f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1223f, 456f, -1003f, -501f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1916f, 197f, 999f, 235f) + vec4<f32>(873f, -174f, 1437f, -598f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(749f, -2281f, 1025f, 812f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1323f, 347f, -262f, 492f) - vec4<f32>(2396f, -822f, -1739f, 104f)))))))));
    var var_1 = func_2();
    var var_2 = any(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], false, false), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 5u)], false, true), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], global2[_wgslsmith_index_u32(u_input.b, 5u)], false, false))), !select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], var_1.a, false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 2u)], false), global2[_wgslsmith_index_u32(u_input.b, 5u)]), select(vec3<bool>(true, true, false), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 2u)]), false)));
    global2 = array<bool, 5>();
    global0 = array<u32, 10>();
    return StorageBuffer(-2464i, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(-2291f)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24921u, 10u)], 10u)], 1u, 4294967295u), vec3<u32>(u_input.b, 16454u, 22864u)), u_input.b, 4294967295u, u_input.b), vec4<u32>(_wgslsmith_sub_u32(u_input.b, 34448u), 4294967295u, ~global0[_wgslsmith_index_u32(58822u, 10u)], 1u)), vec4<u32>(4294967295u, min(_wgslsmith_add_u32(42300u, u_input.b), max(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)])), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], _wgslsmith_dot_vec2_u32(vec2<u32>(2509u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], 10u)]), vec2<u32>(1u, u_input.b))), global0[_wgslsmith_index_u32(~(~u_input.b), 10u)]), select(~vec4<u32>(33734u, global0[_wgslsmith_index_u32(11374u, 10u)], u_input.b, global0[_wgslsmith_index_u32(4294967295u, 10u)]) >> (~vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(0u, 10u)], u_input.b) % vec4<u32>(32u)), ~vec4<u32>(42905u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12278u, 10u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)]) & vec4<u32>(u_input.b, u_input.b, 0u, 21320u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 0u) != ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(~vec2<u32>(u_input.b, ~global0[_wgslsmith_index_u32(68202u, 10u)])));
    let x = u_input.a;
    s_output = func_1();
}

