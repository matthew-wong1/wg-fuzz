struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(2540f), Struct_2(-1962f), Struct_2(131f), Struct_2(1000f), Struct_2(1000f), Struct_2(-173f), Struct_2(1170f), Struct_2(-457f), Struct_2(203f), Struct_2(1626f), Struct_2(-138f), Struct_2(177f), Struct_2(-485f), Struct_2(747f), Struct_2(1597f), Struct_2(1789f), Struct_2(-280f), Struct_2(-618f), Struct_2(178f), Struct_2(1443f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_0 = !(!vec2<bool>(false, all(vec4<bool>(false, false, false, false))));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(reverseBits(min(firstTrailingBit(vec4<i32>(2147483647i, 0i, arg_3.a.x, arg_3.a.x)), vec4<i32>(arg_2, 0i, arg_3.a.x, -13313i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(85760i, arg_3.a.x, arg_1.a.x, 1i), -vec4<i32>(5414i, 36286i, arg_1.a.x, 22805i))), arg_2);
    global0 = array<Struct_2, 20>();
    return -614f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.b, arg_1.b ^ arg_1.b), 0u), ~arg_1.b);
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.b, 25590u, arg_1.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(36770u, arg_0.b, arg_0.b), vec3<u32>(4294967295u, arg_1.b, arg_0.b))) & 67734u, ~abs(20740u), 4294967295u, ~arg_0.b), vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, arg_0.b, 1u)), vec3<u32>(1u, u_input.a, u_input.a)) & _wgslsmith_div_u32(firstLeadingBit(u_input.a), abs(arg_1.b)), ~67566u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, u_input.a, 0u), vec3<u32>(arg_0.b, arg_1.b, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 9675u, arg_1.b, arg_0.b), vec4<u32>(u_input.a, 103162u, 7941u, arg_1.b))) ^ ~abs(arg_0.b), 4294967295u & abs(_wgslsmith_mult_u32(u_input.a, 12501u))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1474f, -1835f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_1.c.x)))), arg_1.c.x);
    var_0 = firstTrailingBit(4294967295u) & (arg_0.b >> ((~arg_1.b << (u_input.a % 32u)) % 32u));
    let var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(0u, u_input.a)) | countOneBits(1219u >> (_wgslsmith_sub_u32(arg_0.b, 56305u) % 32u)), 20u)];
    return _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32((vec2<u32>(arg_1.b, arg_0.b) & var_1.xx) & vec2<u32>(u_input.a, arg_1.b), vec2<u32>(32142u, var_1.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, firstLeadingBit(arg_0.b)), ~_wgslsmith_mult_vec2_u32(~var_1.yw, vec2<u32>(arg_0.b, u_input.a)), countOneBits(var_1.wx)));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_mult_i32(arg_1.x, 44336i);
    var var_1 = func_4(Struct_1(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(2147483647i, -2147483647i, arg_0)), min(vec3<i32>(-17937i, -1i, 0i), vec3<i32>(1i, 798i, 1i)) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-945f * -1000f) * 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1873f)), _wgslsmith_f_op_f32(func_3(-165f, Struct_1(vec3<i32>(arg_0, arg_1.x, arg_1.x), 57656u, vec2<f32>(-147f, 449f)), arg_1.x, Struct_1(vec3<i32>(arg_0, arg_1.x, 21785i), 41747u, vec2<f32>(-280f, 659f)))))))), Struct_1(min(vec3<i32>(-1i) * -vec3<i32>(2256i, 0i, arg_0), ~abs(vec3<i32>(arg_1.x, 5213i, -18209i))), 16622u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-756f, 1000f) + vec2<f32>(-618f, -891f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-150f, -141f) - vec2<f32>(749f, 637f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-142f, -673f), vec2<f32>(-1382f, 424f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, -1000f))))));
    var var_2 = -(~(-(~(-arg_1.x))));
    var_2 = arg_0;
    var_2 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-924i, ~arg_1.x), abs(~(arg_0 ^ arg_0)), var_0), select(max(-1i, -_wgslsmith_add_i32(0i, arg_0)), _wgslsmith_div_i32(~(-arg_1.x), _wgslsmith_div_i32(var_0, -18720i)), _wgslsmith_div_f32(2375f, _wgslsmith_div_f32(269f, -159f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -283f)))));
    return countOneBits(var_0);
}

fn func_1() -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(1i, 1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, -33451i), vec3<i32>(0i, 1i, 80637i)), func_2(-1509i, vec2<i32>(-7148i, 12178i)), -4869i, _wgslsmith_sub_i32(0i, 29732i)), _wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, -1i, 2147483647i, 44740i), vec4<i32>(-20522i, 12050i, -43002i, 7732i)), -vec4<i32>(-1i, -38652i, 21227i, 20266i))), _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_mult_i32(-9908i, ~(-1i))), 66113i), firstTrailingBit(1i));
    var_0 = select(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-5570i, var_0.x, 5874i, var_0.x), -vec4<i32>(2147483647i, var_0.x, var_0.x, -14625i))) & (firstTrailingBit(abs(vec4<i32>(-2147483647i, -2147483647i, 25230i, var_0.x))) << (vec4<u32>(max(u_input.a, 8520u), u_input.a, ~4294967295u, ~20134u) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec4_i32(~(vec4<i32>(var_0.x, -7486i, -2147483647i, var_0.x) & vec4<i32>(var_0.x, 2147483647i, 21045i, 32404i)), vec4<i32>(var_0.x, 37723i, abs(var_0.x), 5124i))), vec4<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))) & true, true, false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true))));
    let var_1 = Struct_1(~(~(-vec3<i32>(0i, -1i, var_0.x))), 4294967295u, vec2<f32>(-1547f, _wgslsmith_f_op_f32(ceil(-1757f))));
    global0 = array<Struct_2, 20>();
    var var_2 = abs(-vec3<i32>(i32(-1i) * -18415i, var_0.x, var_0.x));
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(11435i, _wgslsmith_div_i32(-1i, var_2.x) >> (max(min(0u, var_1.b), 1u) % 32u), var_1.a.x), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.a.x), vec2<i32>(var_0.x, 0i)) | -2147483647i) ^ var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = -1778f;
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(func_1(), ~(-16730i)), countOneBits(vec2<i32>(firstLeadingBit(abs(1082i)), max(min(27252i, 2147483647i), ~12325i))));
    var var_2 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, select(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), false);
    var var_3 = Struct_2(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_1.x, var_1.x), 109f, ~vec3<u32>(u_input.a, ~4294967295u << ((u_input.a >> (35763u % 32u)) % 32u), ~24016u >> ((23833u >> (u_input.a % 32u)) % 32u)), vec2<u32>(_wgslsmith_add_u32(~(~46220u), u_input.a), 17544u), _wgslsmith_mult_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, var_1.x, -29053i), ~vec4<i32>(var_1.x, var_1.x, var_1.x, 31673i), ~vec4<i32>(1i, 29078i, 1i, var_1.x)), vec4<i32>(var_1.x, -19700i, -14545i, var_1.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 43606u, 1u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, 0u, 4294967295u)) % vec4<u32>(32u)), all(var_2.yy)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-var_1.x, var_1.x, var_1.x, -var_1.x), max(~vec4<i32>(0i, 0i, var_1.x, var_1.x), max(vec4<i32>(-13697i, 2147483647i, var_1.x, -28299i), vec4<i32>(var_1.x, -2147483647i, var_1.x, 1i))), abs(vec4<i32>(var_1.x, 8921i, 1i, 1i) << (vec4<u32>(4294967295u, u_input.a, 4294967295u, 88148u) % vec4<u32>(32u))))));
}

