struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(33510u, -1053f);

var<private> global1: array<f32, 17>;

var<private> global2: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(0u, 1u), vec2<u32>(27959u, 0u), vec2<u32>(9324u, 1u), vec2<u32>(1u, 0u), vec2<u32>(53821u, 82111u), vec2<u32>(1u, 64612u), vec2<u32>(19030u, 2393u), vec2<u32>(37351u, 4294967295u), vec2<u32>(9165u, 0u));

var<private> global3: vec4<u32>;

var<private> global4: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = false;
    global2 = array<vec2<u32>, 9>();
    var var_1 = ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(19834i, 33720i, -9586i) | arg_3.c, select(vec3<i32>(u_input.a.x, 0i, 2147483647i), arg_3.c, vec3<bool>(true, true, arg_3.a.x)))) << (firstTrailingBit(_wgslsmith_add_vec3_u32(abs(vec3<u32>(11929u, arg_0.e.a, u_input.c.x)), firstLeadingBit(~global3.wyx))) % vec3<u32>(32u));
    var var_2 = Struct_2(select(vec3<bool>(select(global0.a >= 0u, any(vec3<bool>(true, arg_3.d, arg_3.a.x)), !arg_0.a.x), arg_0.c.x != min(u_input.a.x, -1i), _wgslsmith_mult_i32(-1i, arg_0.c.x) != u_input.a.x), vec3<bool>(_wgslsmith_f_op_f32(global0.b - global1[_wgslsmith_index_u32(u_input.c.x, 17u)]) <= _wgslsmith_f_op_f32(abs(arg_2.b)), all(arg_3.a), all(select(vec4<bool>(arg_3.a.x, arg_0.a.x, false, true), vec4<bool>(false, arg_0.d, false, false), vec4<bool>(arg_0.d, true, false, arg_0.a.x)))), false || !arg_3.a.x), arg_0.b, reverseBits(reverseBits(vec3<i32>(-1i) * -arg_0.c)), false, Struct_1(reverseBits(~(~22609u)), 352f));
    global3 = ~(u_input.c & vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(global3.yx), vec2<u32>(global0.a, var_2.b.a)), _wgslsmith_sub_u32(arg_3.b.a, global0.a), 16324u, 10501u));
    return arg_0.b.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = !vec4<bool>(true, (-630f <= _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(73461u, 17u)], global1[_wgslsmith_index_u32(global0.a, 17u)]))) & false, true, select(true, all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(ceil(global0.b)) > _wgslsmith_f_op_f32(func_3(Struct_2(vec3<bool>(true, false, true), Struct_1(58360u, global0.b), vec3<i32>(1i, -55854i, u_input.a.x), false, Struct_1(global0.a, 445f)), 33471i, Struct_1(16437u, global1[_wgslsmith_index_u32(global0.a, 17u)]), Struct_2(vec3<bool>(false, false, false), Struct_1(1u, 1114f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), false, Struct_1(3881u, global0.b))))));
    var var_1 = _wgslsmith_f_op_f32(step(-1566f, -1027f));
    global2 = array<vec2<u32>, 9>();
    return Struct_2(!vec3<bool>(all(var_0.zyz) | true, 63199i > -u_input.a.x, var_0.x), Struct_1(0u, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(~1u), 17u)])), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-9538i, 40047i, u_input.a.x, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), u_input.a.x), ~select(u_input.a, vec3<i32>(-21160i, 0i, u_input.a.x), any(vec4<bool>(true, false, var_0.x, var_0.x)))), all(select(vec4<bool>(var_0.x, any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), any(vec4<bool>(true, var_0.x, false, var_0.x)), true), !(!vec4<bool>(true, false, true, var_0.x)), select(!vec4<bool>(true, var_0.x, false, var_0.x), !vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), Struct_1(u_input.c.x, global0.b));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = arg_0.b;
    global0 = Struct_1(global0.a, global0.b);
    return func_2(vec3<u32>(~(~(0u | u_input.b)), 4294967295u, 19662u)).b;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 4294967295u), vec2<u32>(95025u, u_input.b)), ~global0.a & max(57099u, 48010u), _wgslsmith_mod_u32(global0.a << (global3.x % 32u), ~u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(floor(1219f));
    global0 = func_4(Struct_2(vec3<bool>(select(u_input.a.x, 1i, true) == (u_input.a.x ^ 2829i), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false)), func_2(vec3<u32>(95315u, u_input.c.x, var_0.a)).d), func_2(vec3<u32>(u_input.b << (9370u % 32u), global3.x, countOneBits(1u))).b, vec3<i32>(abs(0i), max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x)), min(66478i, 53704i)), -_wgslsmith_add_i32(u_input.a.x, -2147483647i)), !(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 17u)]) < _wgslsmith_f_op_f32(-var_0.b)), func_2(_wgslsmith_clamp_vec3_u32(~global3.yxy, global3.xzx | vec3<u32>(0u, global3.x, 4294967295u), global3.ywz)).b));
    let var_2 = _wgslsmith_add_u32(~func_4(Struct_2(vec3<bool>(true, true, true), func_2(vec3<u32>(1u, 1u, 58534u)).b, -vec3<i32>(u_input.a.x, u_input.a.x, 1i), select(true, true, true), Struct_1(0u, 1113f))).a, _wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(3487u, global3.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, global0.a)), global0.a)));
    global2 = array<vec2<u32>, 9>();
    return Struct_1(~_wgslsmith_mult_u32(0u, ~(61942u | var_2)), -318f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), u_input.a.x, u_input.a.x, -1i) & ~vec4<i32>(u_input.a.x << (0u % 32u), u_input.a.x, _wgslsmith_mult_i32(0i, u_input.a.x) & _wgslsmith_sub_i32(u_input.a.x, -35783i), min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 68107i, 1i)), u_input.a.x ^ -75144i));
    global0 = func_1();
    var var_1 = vec2<bool>(false, ~(~73764u) >= ~countOneBits(~u_input.c.x));
    var_1 = select(!(!(!func_2(u_input.c.wwx).a.xy)), vec2<bool>(!(!var_1.x), true), select(vec2<bool>(true, any(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, true, var_1.x), var_1.x))), func_2(max(vec3<u32>(global3.x, 16131u, global0.a), ~vec3<u32>(global0.a, 53917u, 60358u))).a.xz, select(vec2<bool>(global1[_wgslsmith_index_u32(global0.a, 17u)] >= global0.b, !var_1.x), select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(true, var_1.x), vec2<bool>(true, true), false), !vec2<bool>(true, var_1.x)), !(!vec2<bool>(var_1.x, false)))));
    var var_2 = any(select(!(!vec4<bool>(false, var_1.x, false, true)), vec4<bool>(true, false, false, !var_1.x), var_1.x));
    global0 = Struct_1(func_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 61206u, global0.a), global3.xyz >> (u_input.c.wzw % vec3<u32>(32u)))).e.a, 936f);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~1u), _wgslsmith_sub_i32(-firstLeadingBit(u_input.a.x), firstLeadingBit(_wgslsmith_add_i32(-36343i, var_0.x))) ^ _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zx, countOneBits(vec2<i32>(11788i, var_0.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(760f, -1599f) + vec2<f32>(global0.b, global1[_wgslsmith_index_u32(global3.x, 17u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, 708f) * vec2<f32>(367f, global0.b))))))), _wgslsmith_sub_vec3_i32(abs(~max(vec3<i32>(var_0.x, u_input.a.x, u_input.a.x), vec3<i32>(-57040i, u_input.a.x, 20500i))), firstTrailingBit(countOneBits(var_0.xyy))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global0.a, 17u)], 1683f)));
}

