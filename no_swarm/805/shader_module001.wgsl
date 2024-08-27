struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(5829u), Struct_1(4294967295u), Struct_1(0u), Struct_1(0u), Struct_1(34060u), Struct_1(1u), Struct_1(1u), Struct_1(43080u), Struct_1(1u), Struct_1(90945u), Struct_1(1u), Struct_1(11257u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(34001u), Struct_1(0u), Struct_1(0u), Struct_1(86246u));

var<private> global2: Struct_1;

var<private> global3: Struct_2;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global2 = Struct_1(~1u);
    var var_0 = Struct_2(arg_0.a, arg_2, global3.c);
    let var_1 = Struct_1(abs(firstTrailingBit(34790u)));
    var var_2 = Struct_2(!var_0.a, Struct_1(1u), _wgslsmith_f_op_vec3_f32(-arg_0.c));
    var var_3 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-418f + arg_0.c.x), _wgslsmith_div_f32(1582f, global3.c.x)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x)))) & true;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1 << ((max(arg_1, arg_1) | select(arg_1, vec3<u32>(var_1.a, 0u, u_input.c), arg_0.a)) % vec3<u32>(32u)), vec3<u32>((u_input.c >> (0u % 32u)) << (~69573u % 32u), _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(u_input.c, global2.a)), 4294967295u), firstLeadingBit(_wgslsmith_div_vec3_u32(arg_1, vec3<u32>(u_input.a, 1u, arg_1.x)))), vec3<u32>(u_input.a, _wgslsmith_add_u32(global2.a, 0u), firstTrailingBit(1u)));
}

fn func_2() -> Struct_1 {
    let var_0 = max(~27597u, ~(~4294967295u));
    global1 = array<Struct_1, 19>();
    let var_1 = global3.c;
    var var_2 = !(!(!vec4<bool>(80595u < global3.b.a, true, all(vec4<bool>(global3.a, global3.a, false, global3.a)), !global3.a)));
    global1 = array<Struct_1, 19>();
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0, ~_wgslsmith_clamp_u32(func_3(Struct_2(false, Struct_1(1u), vec3<f32>(898f, -1058f, 845f)), ~vec3<u32>(4294967295u, u_input.a, var_0), Struct_1(u_input.a), !vec4<bool>(var_2.x, true, true, false)), 75079u, _wgslsmith_clamp_u32(1u, 1u, ~global2.a))), 19u)];
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(global3.b.a, abs(0u), 4294967295u, ~(38205u << (firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 0u)) % 32u)));
    var var_1 = reverseBits(-((firstTrailingBit(vec3<i32>(u_input.b, 1i, global4.x)) | ~vec3<i32>(-1i, u_input.b, u_input.b)) << ((~var_0.zzw ^ ~vec3<u32>(4294967295u, 55491u, u_input.c)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.c.x, global3.c.x, global3.c.x, global3.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, -775f, global3.c.x, 110f) + vec4<f32>(global3.c.x, -1185f, 251f, 230f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, global3.c.x, 338f, global3.c.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1192f, 1000f, global3.c.x, global3.c.x) - vec4<f32>(1000f, -645f, -636f, global3.c.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-762f, global3.c.x, 1723f, 507f)))))));
    global1 = array<Struct_1, 19>();
    var var_3 = Struct_1(29048u);
    return Struct_1(0u);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global2 = func_4(func_2());
    let var_0 = -reverseBits(_wgslsmith_sub_i32(1i, -13535i));
    global1 = array<Struct_1, 19>();
    let var_1 = Struct_2(true, func_4(Struct_1(func_3(Struct_2(true, global3.b, global3.c), ~vec3<u32>(arg_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 9984u), func_2(), select(vec4<bool>(global3.a, global3.a, true, global3.a), vec4<bool>(global3.a, global3.a, global3.a, true), global3.a)))), _wgslsmith_f_op_vec3_f32(max(global3.c, vec3<f32>(_wgslsmith_f_op_f32(-global3.c.x), global3.c.x, -1000f))));
    global2 = Struct_1(abs(countOneBits(~(~var_1.b.a))));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_2 {
    global3 = Struct_2(any(!vec3<bool>(arg_0.a, all(vec2<bool>(global3.a, arg_0.a)), all(vec2<bool>(global3.a, false)))), Struct_1(~(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 9u)], u_input.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-319f)), _wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(1000f * arg_1))))));
    let var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = Struct_1(~(~3373u));
    let var_2 = 1i;
    return func_1(func_1(Struct_1(reverseBits(_wgslsmith_mod_u32(24267u, arg_0.b.a)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(global2.a, 19u)];
    global3 = func_5(func_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 9u)], 19u)]), global3.c.x, _wgslsmith_clamp_u32(4294967295u, global2.a, _wgslsmith_mult_u32(1u, global2.a)));
    global3 = Struct_2(true, global1[_wgslsmith_index_u32(4294967295u, 19u)], vec3<f32>(global3.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -694f), func_5(func_1(global3.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0[_wgslsmith_index_u32(global3.b.a, 9u)]).c.x)), _wgslsmith_f_op_f32(ceil(global3.c.x))));
    global3 = func_1(Struct_1(1u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-393f))) - -2075f), 472f, _wgslsmith_div_f32(-1416f, global3.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(~67992u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(48804u, 1u), vec2<u32>(global3.b.a, global2.a)), true) >> (0u % 32u));
}

