struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global2: array<u32, 14>;

var<private> global3: bool = false;

var<private> global4: Struct_1 = Struct_1(true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = global4.a;
    let var_1 = abs(u_input.a);
    global1 = array<Struct_1, 8>();
    let var_2 = Struct_2(Struct_1(!(!(global4.a & global4.a))), ~4294967295u, vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(trunc(-164f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(205f, 867f), _wgslsmith_f_op_f32(f32(-1f) * -907f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1470f - 1000f))))));
    global1 = array<Struct_1, 8>();
    return firstTrailingBit(u_input.d.x);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = 17017i;
    let var_1 = 581f;
    global2 = array<u32, 14>();
    var var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-257f)), 1624f), 701f, vec2<u32>(~global2[_wgslsmith_index_u32(20941u, 14u)], 62815u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.d) % 32u)), _wgslsmith_div_vec3_f32(arg_0.c.wzx, _wgslsmith_f_op_vec3_f32(arg_0.c.zxx - arg_0.c.yxx)), vec3<f32>(_wgslsmith_f_op_f32(max(var_1, -1000f)), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x))))));
    var var_3 = vec3<u32>(~(~u_input.e.x), 0u, ~1u << (firstTrailingBit(select(firstTrailingBit(arg_0.b), u_input.e.x, !global4.a)) % 32u));
    return 1u;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(countOneBits(func_3(Struct_2(Struct_1(global4.a), 1u, arg_0), arg_2.a) << (arg_3.c.x % 32u)), min(arg_2.b, _wgslsmith_sub_u32(1u, arg_2.b)), -4635i > _wgslsmith_mod_i32(-2147483647i, arg_1)), firstTrailingBit(abs(arg_3.c.x)) & 4294967295u), 8u)];
    var var_1 = abs(u_input.a.zyw);
    global0 = array<vec4<u32>, 1>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-174f)) * _wgslsmith_f_op_f32(trunc(arg_0.x)))))), 288f, firstTrailingBit(vec2<u32>(arg_3.c.x, arg_3.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -1000f, arg_2.c.x), arg_3.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_2.c.x, -1693f)), vec3<bool>(true, true, true))))) - arg_0.xyy), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_3 = -vec4<i32>(arg_1, i32(-1i) * -50874i, 1i, -2147483647i);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_add_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(22044u, 14u)]), u_input.e)), ~firstLeadingBit(min(vec2<u32>(4294967295u, 89605u), u_input.d)), vec2<u32>(min(arg_3.c.x, arg_2.b), _wgslsmith_mult_u32(arg_2.b, global2[_wgslsmith_index_u32(44326u, 14u)]) | 0u)), vec2<u32>(_wgslsmith_sub_u32(1u, ~global2[_wgslsmith_index_u32(reverseBits(1u), 14u)]), arg_3.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(countOneBits(~func_1())), 14u)] ^ select(~func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1048f, 1906f, -167f, 1628f)), 2147483647i, Struct_2(global1[_wgslsmith_index_u32(u_input.e.x, 8u)], 55485u, vec4<f32>(-325f, 1924f, 697f, -467f)), Struct_3(-1545f, -228f, u_input.e, vec3<f32>(-335f, 114f, -465f), vec3<f32>(1243f, -610f, -487f))), 30092u, !global4.a), 8u)];
    var var_0 = global4.a;
    let var_1 = Struct_1(false);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(818f)) - _wgslsmith_f_op_f32(-660f - 391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1262f)))))));
    let var_3 = !any(select(select(!vec4<bool>(false, global4.a, true, false), select(vec4<bool>(false, global4.a, false, var_1.a), vec4<bool>(var_1.a, global4.a, global4.a, var_1.a), false), any(vec3<bool>(false, var_1.a, true))), vec4<bool>(var_1.a, false, true, global4.a), all(vec2<bool>(var_1.a, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, -370f, var_2.x, var_2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) * vec4<f32>(1192f, var_2.x, -1825f, 1413f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))), false))), _wgslsmith_f_op_vec2_f32(var_2.zz * vec2<f32>(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(sign(var_2.x)), global4.a & var_3)))));
}

