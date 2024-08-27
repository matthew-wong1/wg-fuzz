struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<bool>(false, true, true), vec4<i32>(-29825i, 0i, 1i, 2147483647i), 1i), Struct_2(vec3<bool>(true, false, false), vec4<i32>(-19209i, -24434i, 35497i, -38348i), 40341i), Struct_2(vec3<bool>(true, true, false), vec4<i32>(-2285i, -24578i, 0i, -56775i), i32(-2147483648)), Struct_2(vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), -14637i, 0i, 0i), -1i), Struct_2(vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -1i), -2247i), Struct_2(vec3<bool>(true, true, true), vec4<i32>(37509i, -60749i, 0i, -1i), -18398i), Struct_2(vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), 1i, 1071i, i32(-2147483648)), i32(-2147483648)), Struct_2(vec3<bool>(false, true, true), vec4<i32>(2147483647i, i32(-2147483648), -1i, -15684i), 1i), Struct_2(vec3<bool>(false, false, true), vec4<i32>(-6793i, i32(-2147483648), 271i, -69905i), 0i), Struct_2(vec3<bool>(true, true, false), vec4<i32>(0i, i32(-2147483648), -22362i, 24696i), 26213i), Struct_2(vec3<bool>(false, false, false), vec4<i32>(2147483647i, -4318i, 4035i, 29783i), 4435i), Struct_2(vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), 34880i, -7734i, 13063i), 1i), Struct_2(vec3<bool>(false, true, false), vec4<i32>(-68350i, -50265i, 0i, -30723i), i32(-2147483648)), Struct_2(vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), i32(-2147483648), -11670i, 0i), 1i), Struct_2(vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), -60816i, 39412i, -22061i), -27431i), Struct_2(vec3<bool>(true, false, true), vec4<i32>(-32208i, 0i, -1i, -5116i), 41288i), Struct_2(vec3<bool>(true, true, false), vec4<i32>(23660i, 1140i, -1i, -1i), -41114i), Struct_2(vec3<bool>(false, false, false), vec4<i32>(1i, 16077i, i32(-2147483648), 1i), 1i), Struct_2(vec3<bool>(true, false, true), vec4<i32>(-1i, 0i, 2147483647i, 21272i), 0i), Struct_2(vec3<bool>(false, true, true), vec4<i32>(0i, 28164i, -533i, i32(-2147483648)), 43778i));

var<private> global1: array<vec4<f32>, 28>;

var<private> global2: array<i32, 29> = array<i32, 29>(11764i, i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648), -6550i, 1i, -1i, 1i, -10824i, -28320i, 0i, -877i, 17781i, i32(-2147483648), 2147483647i, i32(-2147483648), -1i, 26512i, -1i, 7971i, i32(-2147483648), -64846i, -15146i, 13927i, -44495i, -36491i, i32(-2147483648), 6325i);

var<private> global3: array<Struct_1, 8>;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(!select(vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(arg_2.a, !arg_2.a, all(vec4<bool>(false, arg_2.a, false, arg_2.a))), true), arg_0, (arg_1 ^ -29721i) | _wgslsmith_sub_i32(-1272i, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(36490u, 29u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 42526i, 714i), arg_0.yyx))));
    var var_1 = arg_0.x;
    var_1 = 13465i;
    var var_2 = select(var_0.a, vec3<bool>(select(0u, global4.x, select(arg_2.a, true, false)) <= 19428u, !var_0.a.x, select(any(!vec4<bool>(true, var_0.a.x, var_0.a.x, true)), countOneBits(arg_1) >= max(0i, arg_0.x), true)), any(!var_0.a));
    var var_3 = Struct_3((var_0.c & -2147483647i) > 1581i, Struct_1(4294967295u >= arg_2.b, 45157u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(887f + arg_2.c)))));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-961f, arg_2.c, arg_2.c)));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = 1241f;
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(~(~vec4<u32>(u_input.a.x, arg_1, arg_1, 53439u)), abs(~vec4<u32>(global4.x, 68512u, global4.x, global4.x))), vec4<u32>(_wgslsmith_mult_u32(~u_input.a.x, ~global4.x), arg_1, abs(13202u), arg_1)), vec4<u32>(~global4.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a), min(vec2<u32>(19245u, u_input.a.x), u_input.a)), min(_wgslsmith_mod_u32(global4.x, 4294967295u), ~0u)), _wgslsmith_div_u32(~6031u, 0u ^ arg_1), countOneBits(~_wgslsmith_mult_u32(arg_1, global4.x))));
    let var_2 = select(vec3<u32>(4294967295u, 1u, ~1887u), _wgslsmith_sub_vec3_u32(min(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, arg_1, 4294967295u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u)), abs(vec3<u32>(1u, global4.x, 4294967295u))), ~vec3<u32>(_wgslsmith_add_u32(19576u, 101104u), 29618u, abs(u_input.a.x))), global2[_wgslsmith_index_u32(global4.x, 29u)] < -_wgslsmith_add_i32(2147483647i ^ arg_0, 27722i | arg_0));
    global2 = array<i32, 29>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(arg_2.x + -1000f), 1369f, -1363f);
    return ~select(vec2<u32>(max(35565u, 4294967295u), max(~58210u, arg_1)), vec2<u32>(~global4.x, ~(~arg_1)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)));
}

fn func_2() -> u32 {
    global2 = array<i32, 29>();
    global4 = func_4(global2[_wgslsmith_index_u32(~74787u | max(global4.x, 70880u), 29u)], u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -581f, -289f) - vec3<f32>(-811f, -105f, 501f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-319f, -1180f, 234f))))) + _wgslsmith_f_op_vec3_f32(func_3(~vec4<i32>(11182i, global2[_wgslsmith_index_u32(global4.x, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], -30095i), -1i, Struct_1(true, 23308u, 285f)))));
    var var_0 = ~_wgslsmith_add_vec2_i32(~abs(-vec2<i32>(-1i, global2[_wgslsmith_index_u32(96659u, 29u)])), -(~vec2<i32>(global2[_wgslsmith_index_u32(59626u, 29u)], -4087i) << (abs(vec2<u32>(4294967295u, 41321u)) % vec2<u32>(32u))));
    let var_1 = Struct_3((_wgslsmith_sub_i32(-118215i, global2[_wgslsmith_index_u32(global4.x, 29u)] >> (4294967295u % 32u)) | global2[_wgslsmith_index_u32(abs(97056u), 29u)]) < -2147483647i, Struct_1(true, firstTrailingBit(abs(~27943u)), 1324f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-717f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2104f))));
    return var_1.b.b;
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_add_u32(u_input.a.x, global4.x | func_2());
    global4 = ~abs(~u_input.a);
    global4 = _wgslsmith_mult_vec2_u32(~u_input.a, vec2<u32>(~(~arg_0.b.b), firstTrailingBit(global4.x) & 2024u));
    let var_1 = u_input.a;
    global2 = array<i32, 29>();
    return arg_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true || select(false, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(26615u, global4.x), 29u)] < _wgslsmith_clamp_i32(2147483647i, global2[_wgslsmith_index_u32(38906u, 29u)], -2147483647i), select(true, all(vec2<bool>(false, true)), true)), u_input.a.x, _wgslsmith_f_op_f32(func_1(Struct_3(true, Struct_1(true, max(1u, global4.x), 927f)))));
    global0 = array<Struct_2, 20>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1423f * 692f))));
    global3 = array<Struct_1, 8>();
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-106f, -global2[_wgslsmith_index_u32(global4.x, 29u)], _wgslsmith_div_vec2_u32(reverseBits(select(u_input.a, u_input.a, vec2<bool>(var_0.a, var_0.a))), firstTrailingBit(u_input.a)) & u_input.a);
}

