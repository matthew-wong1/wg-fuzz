struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: vec3<bool>;

var<private> global2: Struct_2 = Struct_2(Struct_1(i32(-2147483648), vec2<f32>(743f, -207f)), -1i, vec3<bool>(false, true, false));

var<private> global3: vec4<u32> = vec4<u32>(0u, 35674u, 0u, 43384u);

var<private> global4: array<vec2<u32>, 7>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1424f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1604f, -1000f, -526f))), vec4<f32>(global2.a.b.x, global2.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(1000f)))))) - vec4<f32>(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1525f - global2.a.b.x))))), 1268f, global2.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1535f)) - global2.a.b.x)));
    var var_2 = 0u;
    var var_3 = ~_wgslsmith_mult_i32(~1i, global2.a.a);
    let var_4 = select(global2.c, global2.c, select(global2.c, vec3<bool>(!global2.c.x & all(vec4<bool>(true, false, false, global1.x)), any(!vec3<bool>(global0.x, global2.c.x, global2.c.x)), global0.x & true), true && all(select(global0.xy, global0.zy, vec2<bool>(true, global2.c.x)))));
    return 0u >> (1u % 32u);
}

fn func_4(arg_0: u32) -> u32 {
    let var_0 = ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(global2.b, global2.a.a, ~global2.a.a) >> (4294967295u % 32u), 2147483647i);
    var var_1 = Struct_4(Struct_2(global2.a, _wgslsmith_add_i32(var_0, 1i), select(vec3<bool>(global2.c.x || false, global2.c.x, var_0 != global2.a.a), vec3<bool>(true, false, global2.c.x | true), true)), !(!any(!vec4<bool>(global1.x, false, false, false))), 122f);
    var var_2 = var_1.a.a.b.x;
    global4 = array<vec2<u32>, 7>();
    var var_3 = var_1.a;
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global1 = global0.yyy;
    let var_0 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_1.x, ~global3.x, abs(15237u), ~arg_1.x), countOneBits(vec4<u32>(global3.x, arg_1.x, arg_1.x, 0u)), vec4<bool>(!global2.c.x, !global0.x, arg_0.a != -41455i, global1.x)), vec4<u32>(firstTrailingBit(35477u), func_4(func_3()), arg_1.x, u_input.a)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u << (u_input.a % 32u), abs(u_input.a), arg_1.x, 0u), countOneBits(vec4<u32>(u_input.a, arg_1.x, u_input.a, 30305u))), vec4<u32>(~u_input.a, ~arg_1.x, ~global3.x, ~43538u) >> (~firstLeadingBit(vec4<u32>(57907u, 23189u, u_input.a, u_input.a)) % vec4<u32>(32u)), ~vec4<u32>(select(global3.x, arg_1.x, true), global3.x, _wgslsmith_add_u32(u_input.a, arg_1.x), ~global3.x)) % vec4<u32>(32u));
    global0 = !select(select(vec4<bool>(all(vec2<bool>(false, false)), global0.x, any(global2.c), global2.c.x), vec4<bool>(all(global2.c), !global1.x, 775f != arg_0.b.x, all(global1.zx)), vec4<bool>(true, true, all(global2.c.xz), global0.x)), !(!vec4<bool>(false, global0.x, global2.c.x, false)), select(vec4<bool>(true, all(vec2<bool>(false, false)), any(vec2<bool>(global0.x, true)), arg_3.x <= global2.a.b.x), select(select(vec4<bool>(true, true, false, global2.c.x), vec4<bool>(true, global2.c.x, false, false), global2.c.x), select(vec4<bool>(false, global0.x, false, false), vec4<bool>(true, global0.x, true, true), false), all(global2.c.xy)), select(!vec4<bool>(global0.x, true, global1.x, global0.x), !vec4<bool>(global0.x, global2.c.x, true, global0.x), false)));
    let var_1 = arg_0;
    global1 = select(!vec3<bool>(~var_0.x >= arg_1.x, true && (var_0.x > global3.x), global1.x), global0.zxw, global2.c);
    return ~1u;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = min(abs(_wgslsmith_add_u32(u_input.a, func_2(Struct_1(1i, vec2<f32>(1000f, 1000f)), global3.zxw, Struct_1(global2.b, vec2<f32>(global2.a.b.x, 929f)), vec4<f32>(1557f, 503f, global2.a.b.x, -1272f)))) | global3.x, ~firstTrailingBit(func_2(Struct_1(-3117i, vec2<f32>(938f, global2.a.b.x)), reverseBits(vec3<u32>(global3.x, u_input.a, u_input.a)), Struct_1(global2.b, vec2<f32>(global2.a.b.x, global2.a.b.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.b.x, global2.a.b.x, -2012f, global2.a.b.x))))));
    var var_1 = global2.a;
    var_1 = global2.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 530f, global2.a.b.x, -1000f) + vec4<f32>(289f, var_1.b.x, -268f, 372f))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.b.x, 1000f)) * _wgslsmith_f_op_f32(global2.a.b.x - var_1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), var_1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1030f)), _wgslsmith_f_op_f32(-var_1.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b.x, 1610f, -1112f, -322f))) + vec4<f32>(-306f, var_1.b.x, var_1.b.x, global2.a.b.x)))))));
    var var_3 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(19058i), _wgslsmith_sub_i32(0i, 25374i)), reverseBits(firstLeadingBit(vec2<i32>(var_1.a, 2147483647i)))), _wgslsmith_mod_vec2_i32(select(select(vec2<i32>(var_1.a, -1i), vec2<i32>(-15560i, global2.a.a), true), vec2<i32>(17520i, 1i), !global2.c.x), -countOneBits(vec2<i32>(var_1.a, arg_0))));
    return -1000f;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_3 {
    var var_0 = global3.x;
    var var_1 = ~vec4<u32>(_wgslsmith_mult_u32(20416u, min(1u, global3.x) | ~1u), ~select(~57590u, _wgslsmith_dot_vec3_u32(global3.xzy, vec3<u32>(23185u, 22751u, u_input.a)), !global2.c.x), select(~(~global3.x), 0u & ~global3.x, global0.x), u_input.a >> (abs(func_2(global2.a, global3.wwx, global2.a, vec4<f32>(-761f, 506f, -1174f, global2.a.b.x))) % 32u));
    let var_2 = Struct_1(-18635i, vec2<f32>(_wgslsmith_f_op_f32(min(-562f, _wgslsmith_f_op_f32(-global2.a.b.x))), -2148f));
    var var_3 = Struct_3(true, _wgslsmith_mod_vec3_u32(countOneBits(global3.xzw), countOneBits(vec3<u32>(56313u, var_1.x, global3.x))));
    var var_4 = Struct_2(var_2, 5555i, !vec3<bool>(any(global0.xzx), global2.c.x, var_2.b.x > -848f));
    return Struct_3(var_3.a, vec3<u32>(var_1.x, 4294967295u, u_input.a));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32) -> vec2<u32> {
    return ~reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, arg_0.b.x >> (_wgslsmith_clamp_u32(4294967295u, arg_0.b.x, u_input.a) % 32u)), 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<u32>, 7>();
    var var_0 = u_input.a;
    var var_1 = true;
    var_0 = u_input.a;
    var_0 = _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(global3.x, 7u)], vec2<u32>(~_wgslsmith_clamp_u32(4294967295u, 1u, 28608u), global3.x) & func_6(func_5(_wgslsmith_f_op_f32(func_1(global2.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.a, global2.b, global2.a.a), vec3<i32>(global2.a.a, global2.a.a, global2.a.a)), -vec3<i32>(1i, global2.b, 2147483647i), global0.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global3.x, global3.x, 22146u), vec4<u32>(u_input.a, 36046u, global3.x, u_input.a)) | ~vec4<u32>(59465u, u_input.a, global3.x, 1u), -global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.b, firstLeadingBit(_wgslsmith_add_i32(max(1i, firstLeadingBit(global2.b)), -reverseBits(1i))), func_3(), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, firstTrailingBit(global3.x)), ~(~vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.b * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.a.b)), global2.a.b))));
}

