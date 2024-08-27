struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<i32>(2147483647i, -57205i, -36455i)), Struct_1(vec3<i32>(65859i, 28181i, -89115i)), Struct_1(vec3<i32>(2147483647i, 26860i, -1i)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), -12094i, -1i)), Struct_1(vec3<i32>(55976i, -113758i, 19210i)), Struct_1(vec3<i32>(-25780i, -17733i, 47587i)), Struct_1(vec3<i32>(0i, -24927i, 3489i)), Struct_1(vec3<i32>(23105i, -61976i, i32(-2147483648))), Struct_1(vec3<i32>(i32(-2147483648), 0i, -38005i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 52197i)), Struct_1(vec3<i32>(1i, -262i, -1i)), Struct_1(vec3<i32>(26243i, 2147483647i, -1i)), Struct_1(vec3<i32>(-12116i, 9507i, -5795i)), Struct_1(vec3<i32>(69598i, 2147483647i, 8703i)), Struct_1(vec3<i32>(1i, 27347i, 1i)), Struct_1(vec3<i32>(40292i, -14169i, -59612i)));

var<private> global2: array<bool, 18> = array<bool, 18>(true, false, true, false, true, false, true, true, false, false, false, false, true, false, true, false, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(u_input.b.www, abs(u_input.b.yyx)));
    global0 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~4294967295u);
    var var_2 = global0[_wgslsmith_index_u32(~u_input.a.x, 27u)];
    let var_3 = 4294967295u;
    return select(!(!select(!vec3<bool>(true, global2[_wgslsmith_index_u32(var_3, 18u)], true), !vec3<bool>(global2[_wgslsmith_index_u32(var_2.a, 18u)], global2[_wgslsmith_index_u32(var_3, 18u)], global2[_wgslsmith_index_u32(3139u, 18u)]), select(vec3<bool>(true, var_2.b.x, var_2.b.x), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)], true)))), select(!vec3<bool>(any(var_2.b), var_2.b.x, all(vec4<bool>(var_2.b.x, true, var_2.b.x, true))), vec3<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], true, global2[_wgslsmith_index_u32(4294967295u, 18u)])), all(var_2.b), var_2.b.x), !vec3<bool>(!var_2.b.x, select(true, true, false), false & global2[_wgslsmith_index_u32(4294967295u, 18u)])), true);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = Struct_2(~u_input.a.x, vec2<bool>(!all(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_3.c.a, 18u)])), reverseBits(max(arg_2.a.x, -1i)) <= arg_3.a));
    let var_1 = true;
    var var_2 = func_3();
    var var_3 = Struct_1(u_input.b.zxy);
    global0 = array<Struct_2, 27>();
    return min(vec4<u32>(arg_3.c.a >> (_wgslsmith_sub_u32(4294967295u & var_0.a, var_0.a) % 32u), ~(~(~u_input.a.x)), var_0.a, arg_3.c.a), abs(vec4<u32>(0u, arg_3.c.a, 14633u, _wgslsmith_mult_u32(var_0.a, max(0u, var_0.a)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: u32) -> u32 {
    let var_0 = !(!select(!(!vec4<bool>(global2[_wgslsmith_index_u32(25935u, 18u)], true, true, global2[_wgslsmith_index_u32(u_input.a.x, 18u)])), select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(arg_0.x, 18u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 18u)], false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(arg_3, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)])), !global2[_wgslsmith_index_u32(arg_0.x, 18u)]));
    var var_1 = global2[_wgslsmith_index_u32(~arg_3, 18u)];
    var var_2 = Struct_3(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -2147483647i) ^ abs(arg_1.yy), _wgslsmith_sub_vec2_i32(select(u_input.b.zy, u_input.b.xx, true), u_input.b.wy)), global0[_wgslsmith_index_u32(arg_0.x, 27u)], Struct_2(~arg_0.x, select(!var_0.yw, select(!vec2<bool>(var_0.x, true), select(var_0.wy, var_0.xw, global2[_wgslsmith_index_u32(arg_3, 18u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)])), false)));
    var var_3 = vec3<i32>(-1i) * -firstTrailingBit(arg_1 ^ (arg_1 ^ u_input.b.wxy));
    let var_4 = Struct_2(_wgslsmith_mult_u32(u_input.a.x, 1u), var_0.xx);
    return min(~(~9301u), 48756u);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> Struct_4 {
    global2 = array<bool, 18>();
    let var_0 = global2[_wgslsmith_index_u32(func_4(reverseBits(firstTrailingBit(vec4<u32>(1u, 0u, 2597u, u_input.a.x)) | func_2(global2[_wgslsmith_index_u32(~u_input.a.x, 18u)], true, Struct_1(u_input.b.xxx), Struct_3(2147483647i, Struct_2(u_input.a.x, vec2<bool>(false, true)), Struct_2(66969u, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], false))))), _wgslsmith_mod_vec3_i32(arg_0.zwz, vec3<i32>(~(i32(-1i) * -20463i), -19054i << (u_input.a.x % 32u), arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 + 753f), arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -578f)))), 1u), 18u)];
    let var_1 = -41672i;
    let var_2 = Struct_3(arg_0.x, Struct_2(0u, !select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), !vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], false), !global2[_wgslsmith_index_u32(20471u, 18u)])), Struct_2(reverseBits(4294967295u), vec2<bool>(global2[_wgslsmith_index_u32(~45903u, 18u)] && (arg_2 > -1113f), (var_1 << (u_input.a.x % 32u)) >= -28984i)));
    var var_3 = vec3<u32>(func_4(~vec4<u32>(7094u, ~9026u, ~1u, abs(u_input.a.x)), arg_0.wwy, vec4<f32>(759f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) + _wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2), 4294967295u), 4294967295u, 4294967295u);
    return Struct_4(global1[_wgslsmith_index_u32(17295u, 17u)]);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_4 {
    global0 = array<Struct_2, 27>();
    global2 = array<bool, 18>();
    return Struct_4(Struct_1(u_input.b.wxx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1708f)));
    var var_2 = ~(-2147483647i) ^ ~(~1i & -(~u_input.b.x));
    var var_3 = func_5(func_1(~u_input.b, 5559i, _wgslsmith_f_op_f32(floor(var_1))), func_1(~abs(vec4<i32>(-3099i, u_input.b.x, -1i, u_input.b.x)), u_input.b.x & 1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-759f * -1274f)))), Struct_3(u_input.b.x, global0[_wgslsmith_index_u32(0u, 27u)], Struct_2(34946u, !select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 18u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), false))), vec4<bool>(true, (u_input.a.x >> (~u_input.a.x % 32u)) < 62643u, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(select(u_input.a, u_input.a, vec2<bool>(false, false)), u_input.a), 18u)], !global2[_wgslsmith_index_u32(~1215u >> (~4294967295u % 32u), 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, 215f, var_1, var_1), vec4<f32>(322f, var_1, 1240f, -223f)))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(634f, -885f) * vec2<f32>(202f, 1595f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(626f, var_1)))))), vec2<f32>(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-1181f + var_1)), 589f), vec2<bool>(global2[_wgslsmith_index_u32(~1u, 18u)], false))));
}

