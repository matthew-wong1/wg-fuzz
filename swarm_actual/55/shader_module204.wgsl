struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-37457i, 29387i, -14231i), vec3<i32>(-8398i, -7909i, 2147483647i), vec3<i32>(1i, -1i, -2856i), vec3<i32>(-32222i, i32(-2147483648), -1i), vec3<i32>(2147483647i, -1i, -16656i), vec3<i32>(84942i, 1i, 9727i), vec3<i32>(-7966i, 0i, 17775i), vec3<i32>(4086i, 1i, -7602i), vec3<i32>(5630i, 2147483647i, -1087i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(-31458i, 0i, 0i), vec3<i32>(-50972i, 26832i, 9432i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(32277i, 24279i, 0i), vec3<i32>(-6512i, 0i, 3963i), vec3<i32>(-41583i, 0i, -14986i), vec3<i32>(7891i, 2147483647i, 2147483647i), vec3<i32>(1i, -1i, -16639i), vec3<i32>(48110i, 0i, 1567i), vec3<i32>(-17839i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-43037i, -18521i, -1i), vec3<i32>(-1i, 2509i, 2147483647i), vec3<i32>(35810i, i32(-2147483648), 19748i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, 2700f)))), 694f), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x);
    var var_1 = ~(arg_1.zw ^ arg_1.zw);
    let var_2 = global1[_wgslsmith_index_u32(u_input.b, 14u)];
    var var_3 = ~u_input.c.x;
    let var_4 = ~u_input.c.x;
    return _wgslsmith_f_op_f32(trunc(var_2.a));
}

fn func_3() -> i32 {
    let var_0 = any(!select(!vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(true, true)), true)) && true;
    let var_1 = ~vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.b), u_input.d, ~(~16672u), ~1u);
    var var_2 = ~u_input.c.x;
    let var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -44649i), var_0), vec4<i32>(u_input.c.x, u_input.c.x, 52535i, u_input.c.x)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-1i, u_input.c.x, u_input.c.x, -29612i)), vec4<i32>(2147483647i, u_input.c.x, 0i, -2147483647i) ^ vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2949i, 56817i, u_input.c.x >> (2764u % 32u), u_input.c.x ^ u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 0i, 52029i, -4871i) >> (var_1 % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, 25344i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, 0i, u_input.c.x))), vec4<i32>(11611i, u_input.c.x, u_input.c.x, 36279i) ^ -vec4<i32>(23038i, u_input.c.x, u_input.c.x, 14238i))) | (vec4<i32>(~u_input.c.x, u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, -2147483647i), 2147483647i), countOneBits(0i)) >> (~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 54962u), var_1), reverseBits(var_1), abs(vec4<u32>(1u, 66409u, 24649u, var_1.x))) % vec4<u32>(32u)));
    global2 = array<vec3<i32>, 24>();
    return var_3.x;
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_mult_u32(1u, u_input.a)), 14u)];
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~func_3(), -u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x | var_0.c, 1i, 0i), ~u_input.c.x), reverseBits(vec4<i32>(~1i, 0i, 1i, u_input.c.x & 42589i)), _wgslsmith_mod_vec4_i32(min(-vec4<i32>(var_0.c, 58848i, -2147483647i, var_0.c), vec4<i32>(-1i, var_0.c, var_0.c, var_0.b) >> (vec4<u32>(u_input.d, 53261u, u_input.d, u_input.d) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(58820i, var_0.b, u_input.c.x, -35800i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 44091u, 90456u)) % vec4<u32>(32u)))), select(vec4<i32>(max(45608i, u_input.c.x), ~25351i, _wgslsmith_mod_i32(var_0.c, u_input.c.x), u_input.c.x) ^ vec4<i32>(countOneBits(-3568i), _wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_i32(~(vec4<i32>(var_0.e.x, var_0.c, 21270i, -1i) ^ vec4<i32>(var_0.c, var_0.e.x, 1i, u_input.c.x)), vec4<i32>(-var_0.c, _wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec2_i32(var_0.e, vec2<i32>(u_input.c.x, -19048i)), ~2147483647i)), true), ~min(-vec4<i32>(u_input.c.x, 41901i, 17768i, var_0.e.x), vec4<i32>(var_0.e.x, -1i, 1i, var_0.e.x)));
    global2 = array<vec3<i32>, 24>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.a + 456f), -22600i, var_1.x, vec4<bool>(any(vec4<bool>(true, true, true, true)), var_0.d.x, any(var_0.d), var_0.d.x), u_input.c.yx);
    var var_3 = 2297f;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    global2 = array<vec3<i32>, 24>();
    let var_0 = select(max(min(vec4<i32>(-41212i, _wgslsmith_sub_i32(arg_0.e.x, arg_1.e.x), 0i, arg_1.b), abs(~vec4<i32>(arg_1.e.x, u_input.c.x, 0i, 2147483647i))), firstLeadingBit(firstTrailingBit(vec4<i32>(1i, u_input.c.x, -2147483647i, arg_1.c)))), reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, max(-1i, arg_1.c) ^ -arg_1.b)), arg_0.d);
    global0 = arg_1.d.xz;
    global2 = array<vec3<i32>, 24>();
    global2 = array<vec3<i32>, 24>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(!all(vec3<bool>(false, false, global0.x)), select(global0.x, !(-25252i >= u_input.c.x), !global0.x));
    let var_0 = ~_wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(u_input.d, 24u)], u_input.c);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(-143f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2103f, 938f, 909f) + vec3<f32>(-1000f, 340f, -192f)), vec3<f32>(1f, 1f, 1f), !(!vec3<bool>(true, false, global0.x)))), ~vec4<u32>(u_input.a, 1u, 4927u, 15807u) | vec4<u32>(u_input.b, u_input.a, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(102410u, 0u), vec2<u32>(90634u, u_input.b))), select(true, true, select(true, global0.x, false) | false))));
    let var_2 = max(4294967295u, 4294967295u ^ ~(~u_input.b));
    var var_3 = -func_4(global1[_wgslsmith_index_u32(u_input.d, 14u)], func_2(), vec2<u32>(max(u_input.b << (var_2 % 32u), u_input.a), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_0.x, 4294967295u, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(111f, var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(var_1.x, -1441f))))));
}

