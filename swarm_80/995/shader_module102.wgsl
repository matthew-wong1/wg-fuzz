struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<u32>(4294967295u, 76891u)), Struct_1(vec2<u32>(1u, 1u)));

var<private> global4: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(4294967295u, 64305u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(66389u, 6542u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 14557u), vec2<u32>(4294967295u, 1u), vec2<u32>(3055u, 0u), vec2<u32>(4294967295u, 54843u), vec2<u32>(67736u, 32145u), vec2<u32>(4236u, 23782u), vec2<u32>(0u, 0u), vec2<u32>(12090u, 15289u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 31542u), vec2<u32>(4294967295u, 76227u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(15689u, 4294967295u), vec2<u32>(54365u, 15611u), vec2<u32>(164797u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 28981u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 0u, ~abs(~30013u)), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(global2.a.x, u_input.a, u_input.a, 0u) ^ vec4<u32>(73364u, 51252u, 51048u, 2700u)) & ~(~vec4<u32>(global2.a.x, global2.a.x, u_input.a, 1u)), firstLeadingBit(~abs(vec4<u32>(u_input.a, 59312u, u_input.a, global2.a.x))), ~vec4<u32>(13012u, 1u, global2.a.x, reverseBits(global2.a.x))));
    var var_1 = var_0.xwz;
    global4 = array<vec2<u32>, 25>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), -573f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-290f + -1000f))) - _wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(max(-1066f, _wgslsmith_f_op_f32(f32(-1f) * -987f)))));
    let var_3 = global1.x && all(vec4<bool>(true, true, global1.x, false));
    return 236f;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_div_f32(-3030f, _wgslsmith_f_op_f32(ceil(arg_1)))) * arg_2));
}

fn func_1(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(~global2.a, _wgslsmith_sub_vec2_u32(global2.a, global4[_wgslsmith_index_u32(u_input.a, 25u)])));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-295f, arg_0.x))), -1114f)) - -647f));
    global3 = array<Struct_1, 2>();
    let var_2 = vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(var_0, arg_0.x, arg_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(418f, arg_0.x, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, -1000f, arg_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.x)))), -330f)));
    global2 = var_0;
    return vec3<u32>(49079u, _wgslsmith_sub_u32(_wgslsmith_add_u32(62291u, 12216u), global2.a.x), 0u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(757f, -1000f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1324f, 1042f), vec2<f32>(585f, -1053f), vec2<bool>(global1.x, global1.x)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1636f, -566f)), 985f))), global1.yy));
    global3 = array<Struct_1, 2>();
    global3 = array<Struct_1, 2>();
    let var_1 = _wgslsmith_mult_i32(-u_input.b.x, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, u_input.b.x), vec3<i32>(global0.x, u_input.c, 2147483647i) << (vec3<u32>(1u, 121293u, 30075u) % vec3<u32>(32u))) | abs(~u_input.c)));
    let var_2 = Struct_1(arg_0.a);
    return Struct_1(vec2<u32>(39357u, arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_add_vec2_u32(global2.a, vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), 1u)));
    let var_0 = func_4(global3[_wgslsmith_index_u32(0u, 2u)], reverseBits(func_1(vec3<f32>(_wgslsmith_div_f32(1058f, -523f), _wgslsmith_div_f32(-829f, 645f), -803f))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(55966u >> ((1u >> (u_input.a % 32u)) % 32u), min(~4294967295u, ~u_input.a)), select(abs(~vec2<u32>(u_input.a, 0u)), vec2<u32>(countOneBits(112470u), abs(49860u)), select(select(global1.xx, vec2<bool>(false, global1.x), global1.x), global1.xx, true))), 2u)]);
    global1 = !vec3<bool>(global1.x | global1.x, !(!global1.x), true);
    var var_1 = var_0;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, var_0.a.x), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(select(-u_input.c, _wgslsmith_sub_i32(u_input.b.x, global0.x), false))), ~76181u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1015f, 218f), vec2<f32>(478f, -123f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(131f, 943f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(336f, 543f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(909f, 615f)))))), global0.x, u_input.b);
}

