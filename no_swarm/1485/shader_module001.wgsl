struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: Struct_2;

var<private> global3: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 4294967295u, 34900u), vec3<u32>(174u, 1u, 40853u), vec3<u32>(28623u, 3113u, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = array<Struct_2, 27>();
    let var_0 = global1.x;
    var var_1 = (_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(max(global2.a, global2.a)))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1380f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) && (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global2.a)))))) < 1253f);
    return all(global1.ww);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global1 = !select(vec4<bool>(!global1.x, (true || global1.x) | true, global1.x, global1.x), !select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, true, true, global1.x), vec4<bool>(false, true, global1.x, false)), !vec4<bool>(global1.x, global1.x, true, true)), func_3());
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-u_input.c.xz, -u_input.c.zz), select(vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b, u_input.c.x, 2147483647i, u_input.b)), -vec4<i32>(1i, global2.b, -47238i, u_input.b)), u_input.c.x), vec2<i32>(-global2.b, _wgslsmith_mod_i32(global2.b, firstLeadingBit(1i))), all(select(global1.wz, !global1.zx, true))));
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~(~global2.c.a.x), 38972u, 4294967295u), _wgslsmith_clamp_vec3_u32(~(~abs(vec3<u32>(23616u, 14674u, global2.c.a.x))), max(vec3<u32>(u_input.a.x, firstTrailingBit(59468u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), global2.c.a)), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), abs(global3[_wgslsmith_index_u32(~1u, 4u)]))), 27u)];
    global0 = array<Struct_2, 27>();
    return arg_0.x;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec4<f32>) -> vec4<bool> {
    global3 = array<vec3<u32>, 4>();
    var var_0 = global1.x && false;
    let var_1 = false;
    global1 = !(!vec4<bool>(var_1, false, global1.x, !(arg_2 > 2147483647i)));
    global0 = array<Struct_2, 27>();
    return !(!vec4<bool>(true, !func_3(), global1.x, all(vec2<bool>(true, global1.x))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(global2.a + 676f);
    let var_1 = _wgslsmith_mult_i32(i32(-1i) * -(~countOneBits(-69092i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, u_input.b, global2.b), vec4<i32>(u_input.b, -1692i, u_input.b, -28513i))), -(~vec4<i32>(-32552i, 1i, u_input.c.x, u_input.b)))));
    let var_2 = u_input.c.x >> (1u % 32u);
    global3 = array<vec3<u32>, 4>();
    global1 = func_4(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.b), u_input.c.zz) >> (global2.c.a.x % 32u)), global2.c.a.x, _wgslsmith_sub_i32(u_input.b, max(~abs(var_1), global2.b)), vec4<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(round(var_0)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, 845f, global2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(620f, var_0, global2.a) + vec3<f32>(global2.a, -471f, global2.a)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(round(-184f))), 255f), -1966f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.c.a.x;
    var_0 = ~max(func_1() | _wgslsmith_dot_vec4_u32(vec4<u32>(14001u, 34796u, u_input.a.x, 1407u), vec4<u32>(u_input.a.x, global2.c.a.x, 50976u, 4294967295u)), ~global2.c.a.x);
    let var_1 = u_input.c;
    let var_2 = u_input.a;
    var var_3 = Struct_2(global2.a, -min(min(u_input.c.x, max(global2.b, 2147483647i)), u_input.b), global2.c);
    var var_4 = Struct_1(~(~(~select(vec2<u32>(var_3.c.a.x, 1u), vec2<u32>(u_input.a.x, global2.c.a.x), global1.wx))));
    let var_5 = Struct_1(vec2<u32>(u_input.a.x, abs(~0u)));
    var var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1339f * global2.a), -907f, global2.a))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, var_3.a, global2.a)))), select(select(select(global1.zyw, global1.yyy, global1.wxw), global1.xwy, vec3<bool>(global1.x, false, global1.x)), select(select(global1.zzy, global1.zyx, global1.yzy), global1.yzx, true), global1.ywy))), ~global2.c.a.x);
}

