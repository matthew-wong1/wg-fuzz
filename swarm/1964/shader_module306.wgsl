struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true));

var<private> global2: vec3<i32>;

var<private> global3: Struct_1 = Struct_1(false, false, vec2<i32>(i32(-2147483648), 0i), false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(958f + -1583f), 1f)) - _wgslsmith_f_op_f32(sign(1066f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3835f + 296f) * _wgslsmith_f_op_f32(1000f - -1838f))))));
    let var_1 = Struct_1(global3.b, (global0.d | true) || true, -_wgslsmith_clamp_vec2_i32(global2.xy, u_input.b, u_input.b), global0.a);
    var var_2 = _wgslsmith_sub_u32(4294967295u, max(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, ~25233u), ~1u), ~1u));
    let var_3 = Struct_1(false, global0.a, global2.xz, global0.d);
    var var_4 = select(vec2<bool>(true, true), vec2<bool>(!all(select(vec4<bool>(global0.b, var_1.d, false, true), vec4<bool>(global0.d, false, true, global3.b), global3.a)), true), select(!select(vec2<bool>(true, true), !vec2<bool>(true, var_1.d), select(vec2<bool>(var_1.b, false), vec2<bool>(false, global0.b), var_3.d)), !(!(!vec2<bool>(true, global3.a))), select(select(!vec2<bool>(global3.b, true), !vec2<bool>(global0.a, true), select(vec2<bool>(var_1.b, true), vec2<bool>(true, true), true)), vec2<bool>(select(true, false, true), var_3.a), vec2<bool>(var_3.a || false, global0.d || true))));
    return select(false, !any(select(select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, global0.b, var_4.x), vec3<bool>(true, var_4.x, false)), vec3<bool>(false, var_3.d, true), vec3<bool>(true, var_4.x, global3.a))), _wgslsmith_f_op_f32(-1f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1035f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_1 {
    global1 = array<vec4<bool>, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) * 312f);
    let var_1 = ~(~_wgslsmith_clamp_u32(~24162u, select(arg_1.x, ~arg_1.x, func_3()), 23968u ^ (arg_1.x | arg_1.x)));
    var var_2 = Struct_1(global3.d, func_3(), global2.zx, !all(!vec2<bool>(arg_0.a, global0.d)));
    let var_3 = _wgslsmith_f_op_f32(floor(var_0));
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> i32 {
    global3 = Struct_1(arg_0.b, true, -global2.zy, true);
    var var_0 = func_2(arg_0, vec4<u32>(_wgslsmith_div_u32(select(0u >> (0u % 32u), 3000u, true), 1u), min(28276u, 1u) >> (1u % 32u), max(1u, _wgslsmith_sub_u32(0u, 0u)) | _wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(30631u, 33083u, 4294967295u), 1u), ~23861u), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~0u, ~4294967295u), 96883u), vec2<u32>(~1u, select(1u, 1u, !arg_0.b))));
    var var_1 = Struct_1(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 41044u), vec2<u32>(20916u, 4294967295u))) >= 40401u, true, global0.c, any(!(!select(vec2<bool>(false, global3.b), vec2<bool>(arg_0.a, global0.a), vec2<bool>(arg_0.a, arg_0.b)))));
    global3 = func_2(Struct_1(!(select(true, global3.b, false) | true), true, -func_2(arg_0, vec4<u32>(0u, 0u, 0u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(60868u, 9331u), vec2<u32>(0u, 65035u))).c, true), ~max(vec4<u32>(1u, 1u, _wgslsmith_mod_u32(16979u, 4294967295u), 24586u), ~abs(vec4<u32>(1u, 129877u, 4294967295u, 1u))), reverseBits(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(6280u, 134103u, 0u), ~1u, 38703u), ~(~4294967295u))));
    let var_2 = func_2(Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(189f)) - _wgslsmith_f_op_f32(min(-662f, -410f))) != -947f, max(vec2<i32>(1i, 17191i), -vec2<i32>(u_input.b.x, var_0.c.x)) ^ vec2<i32>(-48296i, _wgslsmith_add_i32(2147483647i, var_0.c.x)), var_0.b & true), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(24708u, 67148u, 1u, 1u), vec4<u32>(1u, 7424u, 53607u, 1u)) | _wgslsmith_clamp_u32(1u, 1u, 1u), ~abs(74439u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 0u, 33765u, 1u)), ~vec4<u32>(4294967295u, 14515u, 4294967295u, 4294967295u)), 1u)), vec2<u32>(_wgslsmith_clamp_u32(31450u, 54564u, _wgslsmith_div_u32(4294967295u, 10311u)) ^ reverseBits(1u), ~1u));
    return select(2147483647i, 35139i ^ abs(func_2(Struct_1(global3.d, global0.a, arg_0.c, false), vec4<u32>(48158u, 1u, 29160u, 1u), ~vec2<u32>(82944u, 51218u)).c.x), !var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_1(Struct_1(reverseBits(global0.c.x) == ~u_input.b.x, true, global2.xy, !all(vec2<bool>(global0.d, global3.a)))), 0i);
    global2 = vec3<i32>(_wgslsmith_clamp_i32(~u_input.a, _wgslsmith_add_i32(global3.c.x, u_input.b.x), global3.c.x), ~func_2(func_2(Struct_1(false, true, vec2<i32>(14633i, var_0.x), true), vec4<u32>(56007u, 4294967295u, 4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u)), vec4<u32>(_wgslsmith_div_u32(54770u, 25832u), 1u, 1u, abs(8610u)), abs(vec2<u32>(78778u, 4294967295u))).c.x, -26961i);
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, _wgslsmith_mult_i32(var_0.x, 16331i), 1i, abs(global3.c.x)), vec4<i32>(global3.c.x, ~2147483647i, global3.c.x, abs(global0.c.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -1i, 0i, var_0.x) << (vec4<u32>(4294967295u, 8593u, 4294967295u, 56167u) % vec4<u32>(32u)), ~vec4<i32>(global0.c.x, u_input.b.x, 0i, global2.x))), (_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, u_input.a, 2147483647i, u_input.a), vec4<i32>(global0.c.x, -18775i, var_0.x, u_input.b.x)), -vec4<i32>(u_input.b.x, 30834i, var_0.x, 0i), vec4<i32>(1i, global2.x, global2.x, var_0.x)) & -abs(vec4<i32>(global2.x, 0i, u_input.b.x, -65910i))) | countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 43016i, var_0.x, global3.c.x), vec4<i32>(global3.c.x, 18248i, -1i, global0.c.x))));
    global1 = array<vec4<bool>, 18>();
    var var_2 = Struct_1(any(vec3<bool>(global0.a, any(vec3<bool>(true, false, global0.a)), global0.a)), func_3(), vec2<i32>(5493i, -31585i), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(52538u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1565f, 529f)))))), min(global0.c.x, u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-2219f - -732f), -138f, -942f)))), ~max(firstLeadingBit(vec4<i32>(global3.c.x, var_2.c.x, 60117i, var_1.x)), -(~vec4<i32>(30935i, 28659i, global0.c.x, -1i))));
}

