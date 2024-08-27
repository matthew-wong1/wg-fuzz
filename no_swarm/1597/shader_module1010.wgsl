struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 32682i, -1i, 0i);

var<private> global1: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-655f, -575f), vec2<f32>(382f, 1000f), vec2<f32>(280f, -655f), vec2<f32>(2266f, 1208f), vec2<f32>(934f, -1614f), vec2<f32>(1515f, 182f), vec2<f32>(243f, 195f), vec2<f32>(-897f, 429f), vec2<f32>(-230f, -1000f), vec2<f32>(506f, 122f), vec2<f32>(255f, 427f), vec2<f32>(1000f, -872f), vec2<f32>(-396f, -1733f), vec2<f32>(679f, 693f), vec2<f32>(-658f, -892f), vec2<f32>(-767f, 595f), vec2<f32>(1351f, -187f), vec2<f32>(-1607f, 459f), vec2<f32>(788f, 1000f), vec2<f32>(-474f, 634f), vec2<f32>(-147f, -1419f), vec2<f32>(-1226f, 383f), vec2<f32>(217f, 1700f), vec2<f32>(1006f, 806f), vec2<f32>(723f, 511f), vec2<f32>(274f, 1051f), vec2<f32>(1635f, 352f), vec2<f32>(-441f, -320f), vec2<f32>(-120f, -398f));

var<private> global2: f32;

var<private> global3: array<i32, 12> = array<i32, 12>(1i, -927i, 50913i, -1i, 32258i, -1i, 965i, i32(-2147483648), 2147483647i, 0i, 0i, 0i);

var<private> global4: array<f32, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global3 = array<i32, 12>();
    var var_0 = Struct_1(_wgslsmith_add_vec3_i32(arg_1.a, arg_1.a));
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, arg_1.a.x), arg_2.a.x), _wgslsmith_mod_i32(arg_2.a.x, -1i) | abs(-76521i)), arg_1.a.x, (i32(-1i) * -1i) << (1u % 32u), _wgslsmith_mod_i32(-19934i, -_wgslsmith_mod_i32(global0.x, -11864i))), _wgslsmith_add_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(~u_input.a.x, 12u)], -2147483647i, ~arg_2.a.x, ~var_0.a.x), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], -2147483647i, arg_1.a.x, global0.x), vec4<i32>(var_0.a.x, arg_0.x, arg_2.a.x, 48719i)))));
    var var_1 = Struct_1(~_wgslsmith_mod_vec3_i32((arg_1.a | var_0.a) >> (abs(vec3<u32>(4294967295u, 1u, u_input.a.x)) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_i32(arg_2.a, vec3<i32>(13457i, arg_2.a.x, -48352i))));
    let var_2 = arg_2;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(u_input.a.x, 31u)]))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a);
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 71464u), ~u_input.a.zz)), 31u)], -203f))));
    var var_1 = countOneBits(u_input.a);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(abs(_wgslsmith_clamp_vec3_i32(var_0.a, -vec3<i32>(arg_1.a.x, arg_1.a.x, var_0.a.x), vec3<i32>(-50155i, 1i, arg_0.a.x))), arg_1, arg_1))));
    var_1 = select(select(~(~u_input.a), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.wy, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(48062u, var_1.x))), max(_wgslsmith_mod_u32(var_1.x, var_1.x), 4294967295u), _wgslsmith_sub_u32(~0u, u_input.a.x)), true), u_input.a, false);
    return Struct_1(_wgslsmith_mult_vec3_i32(select(select(arg_0.a, vec3<i32>(-2147483647i, 24394i, arg_1.a.x), vec3<bool>(false, false, false)) & abs(vec3<i32>(2147483647i, -1i, 2147483647i)), arg_0.a & abs(var_0.a), !(arg_2 | false)), firstTrailingBit(vec3<i32>(arg_1.a.x & arg_1.a.x, 0i, ~1i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global0 = min(~select(vec4<i32>(-22963i, 21771i, global0.x, arg_0.a.x), abs(vec4<i32>(-21020i, global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(arg_2.x, 12u)], 2147483647i)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))), _wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(arg_1.a.x, arg_0.a.x, -17754i, global0.x)), vec4<i32>(10053i & global0.x, ~arg_1.a.x, 2147483647i, abs(arg_1.a.x)), countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(1u, 12u)], -143i, arg_1.a.x, -1i) | vec4<i32>(arg_0.a.x, -20894i, global3[_wgslsmith_index_u32(0u, 12u)], -1i)))) ^ select(~vec4<i32>(max(36192i, 0i), ~(-2147483647i), -5323i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, arg_1.a.x, -2147483647i, 0i), vec4<i32>(arg_0.a.x, 1i, global3[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_0.a.x))), vec4<i32>(~(arg_0.a.x | arg_0.a.x), 26228i, -38176i, -arg_0.a.x), vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), !all(vec4<bool>(true, true, true, false)), true));
    let var_0 = Struct_1(vec3<i32>(arg_0.a.x, _wgslsmith_mod_i32(0i, select(max(arg_1.a.x, -10899i), -5671i | global0.x, select(false, false, false))), -global0.x << (1u % 32u)));
    global3 = array<i32, 12>();
    let var_1 = u_input.a.x;
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(~36469u, 12u)], _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.x, 1i, -2147483647i), vec3<i32>(arg_0.a.x, var_0.a.x, var_0.a.x)), -global0.x >> (arg_2.x % 32u)), var_0.a.x, -13931i), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(14543i, arg_0.a.x, -32065i, global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<i32>(1i, global0.x, arg_1.a.x, -47719i)), max(vec4<i32>(43952i, 18164i, -2147483647i, arg_0.a.x), vec4<i32>(-2147483647i, 0i, -53229i, -37434i))), max(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 81271i, arg_1.a.x, arg_0.a.x), vec4<i32>(0i, -1i, arg_0.a.x, global3[_wgslsmith_index_u32(17459u, 12u)])), vec4<i32>(global0.x, global0.x, 3180i, 19683i))), vec4<i32>(_wgslsmith_div_i32(1i, -2147483647i), select(abs(-20989i), arg_0.a.x, true), min(_wgslsmith_mult_i32(arg_0.a.x, arg_0.a.x), ~(-3509i)), 44405i)), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a.x, 0i, arg_1.a.x, 14117i) << ((u_input.a & u_input.a) % vec4<u32>(32u))), min(~(~vec4<i32>(-2147483647i, global0.x, 0i, 1i)), vec4<i32>(global0.x ^ var_0.a.x, _wgslsmith_dot_vec2_i32(arg_1.a.zy, vec2<i32>(arg_0.a.x, arg_0.a.x)), arg_1.a.x, var_0.a.x))));
    return func_2(func_2(arg_0, arg_1, _wgslsmith_div_i32(arg_1.a.x, 19977i) <= -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, 7624i), arg_1.a.zx)), var_0, any(vec3<bool>((arg_2.x | var_1) < 75767u, false, true)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(global0.xwy);
    global3 = array<i32, 12>();
    var var_1 = 16832i;
    var var_2 = func_4(func_2(arg_0, Struct_1(vec3<i32>(1i, firstLeadingBit(arg_0.a.x), global0.x)), !all(vec3<bool>(true, true, true))), func_2(func_2(Struct_1(vec3<i32>(53816i, arg_0.a.x, var_0.a.x)), var_0, any(vec4<bool>(true, true, true, true))), var_0, true || (~(-2147483647i) != _wgslsmith_add_i32(global3[_wgslsmith_index_u32(14720u, 12u)], 48346i))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(42050u, u_input.a.x), u_input.a.x, 0u & u_input.a.x, 29998u), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)) & vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyw & u_input.a.zzw, firstTrailingBit(vec3<u32>(u_input.a.x, 38542u, u_input.a.x))), abs(106172u), _wgslsmith_mult_u32(~u_input.a.x, 6844u), 4294967295u));
    let var_3 = var_0.a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(abs(~(~u_input.a.x)), 31u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2217f, -148f)) + -1000f)), true)) * -682f);
    var var_1 = 0i;
    var var_2 = true;
    let var_3 = global3[_wgslsmith_index_u32(u_input.a.x, 12u)];
    let var_4 = ~(~max(func_1(Struct_1(vec3<i32>(global0.x, global0.x, -1i))), ~u_input.a.x | u_input.a.x));
    var_0 = _wgslsmith_div_f32(global4[_wgslsmith_index_u32(max(var_4, 1u), 31u)], -1134f);
    let var_5 = Struct_1(vec3<i32>(func_4(Struct_1(select(vec3<i32>(global3[_wgslsmith_index_u32(var_4, 12u)], -2147483647i, -13993i), vec3<i32>(-2147483647i, -3861i, global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<bool>(true, false, true))), Struct_1(global0.ywy ^ global0.yzy), u_input.a).a.x, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_4, 0u), 12u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(17015u, func_1(func_4(Struct_1(global0.zxy), Struct_1(global0.yxw), u_input.a))), 12u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zxw | vec3<u32>(var_4, 1u, 40855u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 72881u, u_input.a.x), vec3<u32>(var_4, 18699u, var_4), vec3<u32>(59110u, 6886u, var_4))), min(var_4 & u_input.a.x, var_4)), ~var_5.a.x, max(var_5.a.x, _wgslsmith_div_i32(-30670i, var_5.a.x) & 1i) & 0i);
}

