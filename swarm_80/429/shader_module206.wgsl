struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: u32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 1u, 1u);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(66778u, 18560u, 86696u), vec3<u32>(1u, 12367u, 4294967295u), vec3<u32>(104066u, 29952u, 0u), vec3<u32>(1u, 52553u, 33334u), vec3<u32>(0u, 11143u, 31979u), vec3<u32>(1521u, 4294967295u, 0u), vec3<u32>(9378u, 34899u, 4294967295u), vec3<u32>(27720u, 7414u, 4294967295u), vec3<u32>(1u, 9246u, 102982u), vec3<u32>(31173u, 54195u, 4294967295u), vec3<u32>(0u, 0u, 49996u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(76997u, 0u, 79070u), vec3<u32>(1u, 26608u, 1u), vec3<u32>(45725u, 1u, 4294967295u), vec3<u32>(51331u, 21996u, 2087u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> vec3<bool> {
    let var_0 = !vec3<bool>(true, any(vec3<bool>(true, false, true)), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, false), vec2<bool>(true, true))));
    global2 = array<vec3<u32>, 16>();
    let var_1 = var_0.x;
    var var_2 = 2147483647i;
    var var_3 = ~u_input.c;
    return var_0;
}

fn func_3() -> vec4<u32> {
    return ~(~abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, global0.x, u_input.c.x, 4294967295u), vec4<u32>(1u, u_input.c.x, 0u, 33766u) << (vec4<u32>(u_input.c.x, u_input.c.x, 0u, global0.x) % vec4<u32>(32u)), vec4<u32>(109066u, u_input.c.x, 20937u, u_input.c.x))));
}

fn func_1() -> Struct_1 {
    global0 = ~vec3<u32>(global0.x, _wgslsmith_sub_u32(firstTrailingBit(0u >> (global0.x % 32u)), ~(~38322u)), 1u);
    global2 = array<vec3<u32>, 16>();
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(!any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, false)) | (-36116i <= u_input.a.x), true), all(select(func_2(vec4<f32>(-607f, -2292f, 744f, 1011f), vec2<f32>(2555f, 1557f), u_input.c.x, global0.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = Struct_3(u_input.c, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, 4616u, 1047u, global0.x)) ^ _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, global0.x, u_input.c.x, global0.x), vec4<u32>(global0.x, 1u, u_input.c.x, 15310u)), vec4<u32>(u_input.c.x, u_input.c.x, 40382u, 1u)), reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, global0.x, 0u), vec4<u32>(0u, 0u, 0u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, global0.x, global0.x, u_input.c.x), vec4<u32>(714u, 63614u, 10990u, 0u)), vec4<u32>(12702u, 39335u, u_input.c.x, global0.x)))), ~(~(select(vec4<u32>(5096u, 2260u, 6379u, global0.x), vec4<u32>(0u, u_input.c.x, 33875u, u_input.c.x), vec4<bool>(false, var_0.x, false, var_0.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(73159u, 4294967295u, 103558u, 85619u)))), u_input.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(990f - 1246f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(157f * -901f), _wgslsmith_f_op_f32(256f + -125f)))))));
    let var_2 = Struct_4(min(_wgslsmith_clamp_vec4_u32(max(var_1.c, func_3()), ~(~var_1.c), max(~var_1.c, ~vec4<u32>(70477u, u_input.c.x, u_input.c.x, var_1.c.x))), ~select(vec4<u32>(global0.x, u_input.c.x, global0.x, 28445u), ~var_1.c, !vec4<bool>(true, var_0.x, false, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e, -1050f) - _wgslsmith_f_op_f32(max(-667f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) * _wgslsmith_f_op_f32(var_1.e * var_1.e))))), ~(-_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, -1i), 1i)));
    return Struct_1(_wgslsmith_mult_vec2_u32(u_input.c, var_2.a.yx), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(!var_0.x, var_2.c <= u_input.b, true), var_1.c.x != ~u_input.c.x), vec3<bool>((var_1.e > -1619f) | (var_0.x && true), !var_0.x, true), !any(!vec3<bool>(var_0.x, false, true))), vec2<u32>(~_wgslsmith_div_u32(~4294967295u, var_2.a.x), 11397u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(557f + -111f), -426f, _wgslsmith_f_op_f32(max(var_1.e, 351f)), _wgslsmith_f_op_f32(f32(-1f) * -1438f)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), var_2.b, _wgslsmith_f_op_f32(max(var_2.b, var_1.e)), _wgslsmith_f_op_f32(var_2.b * var_2.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(_wgslsmith_mult_vec3_u32(~(~(~global2[_wgslsmith_index_u32(1u, 16u)])), min(max(select(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(global0.x, 16u)], vec3<bool>(true, true, true)), firstTrailingBit(vec3<u32>(u_input.c.x, 107664u, u_input.c.x))), global2[_wgslsmith_index_u32(1u, 16u)])), vec3<u32>(1u, 1u, global0.x & (_wgslsmith_mult_u32(u_input.c.x, global0.x) >> (~20473u % 32u))));
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.d.zyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.d.zxw)) - _wgslsmith_f_op_vec3_f32(step(var_0.d.wwz, vec3<f32>(var_0.d.x, -130f, 438f))))))));
    var var_2 = global0.x;
    var var_3 = select(vec4<bool>(false, true, true, any(vec2<bool>(false, var_0.b.x & false))), vec4<bool>(!(-u_input.b >= -2147483647i), -u_input.b < _wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b)), false, false), vec4<bool>(var_0.b.x, select(any(var_0.b.zz), any(select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(false, var_0.b.x, true, var_0.b.x), var_0.b.x)), any(select(vec4<bool>(false, true, false, var_0.b.x), vec4<bool>(var_0.b.x, true, false, true), vec4<bool>(false, false, var_0.b.x, var_0.b.x)))), all(select(select(vec4<bool>(true, var_0.b.x, false, true), vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), select(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, false, var_0.b.x, false), true), !vec4<bool>(false, var_0.b.x, true, var_0.b.x))), select(var_0.b.x, any(vec2<bool>(var_0.b.x, true)), !(!var_0.b.x))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -1521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(819f - var_1.x))))));
    var var_5 = var_0.d;
    let var_6 = Struct_5(Struct_3(~(~u_input.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, var_0.a.x), ~(~global2[_wgslsmith_index_u32(15375u, 16u)])), ~vec4<u32>(0u, func_1().c.x, ~125242u, 27303u << (0u % 32u)), min(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, -1i, 40469i)) | -11706i, var_4.x), Struct_4(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.x, u_input.c.x, 4294967295u), vec4<u32>(56628u, var_0.a.x, 0u, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_4.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2197f, var_1.x)))), u_input.b), _wgslsmith_dot_vec4_u32(~abs(abs(vec4<u32>(4294967295u, 101012u, 1u, global0.x))), ~select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 51044u), vec4<u32>(1u, u_input.c.x, 4294967295u, var_0.c.x), vec4<bool>(true, false, var_3.x, var_3.x)) ^ (func_3() & min(vec4<u32>(global0.x, u_input.c.x, 0u, global0.x), vec4<u32>(global0.x, u_input.c.x, 4294967295u, global0.x)))), Struct_3(_wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, 1u)), _wgslsmith_clamp_vec2_u32(abs(global0.zx), _wgslsmith_div_vec2_u32(vec2<u32>(44849u, var_0.a.x), u_input.c), reverseBits(global0.yz))), global0.x, max(~(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x) & vec4<u32>(7512u, 4294967295u, 62848u, u_input.c.x)), firstLeadingBit(vec4<u32>(1u, 11992u, 4294967295u, u_input.c.x))), u_input.a.x, -1000f), Struct_2(-vec4<i32>(_wgslsmith_clamp_i32(-19678i, -2147483647i, 1i), ~37876i, firstTrailingBit(5478i), u_input.a.x), abs(u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1().d.xww, 1472i, vec4<u32>(func_1().a.x, var_0.a.x, 29784u, min(0u, func_1().c.x)));
}

