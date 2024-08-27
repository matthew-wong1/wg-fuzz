struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(612f, -262f);

var<private> global1: array<vec3<i32>, 30>;

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 33673u, 4294967295u), vec3<u32>(14207u, 1u, 4294967295u), vec3<u32>(14816u, 0u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 17841u, 4294967295u), vec3<u32>(60731u, 0u, 1u), vec3<u32>(0u, 51366u, 1u), vec3<u32>(1u, 29889u, 67122u), vec3<u32>(33135u, 19934u, 74029u), vec3<u32>(0u, 1u, 1u), vec3<u32>(17295u, 100749u, 2391u), vec3<u32>(32905u, 8284u, 13923u), vec3<u32>(0u, 16407u, 0u), vec3<u32>(1u, 0u, 19310u), vec3<u32>(0u, 0u, 0u), vec3<u32>(10715u, 43769u, 1u), vec3<u32>(46406u, 2134u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 7751u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 4294967295u, 40632u));

var<private> global3: array<i32, 29>;

var<private> global4: Struct_1 = Struct_1(2147483647i, vec2<i32>(64661i, i32(-2147483648)), vec3<i32>(39216i, 2147483647i, 8725i), vec4<f32>(2122f, -149f, 481f, -2127f), vec4<u32>(58909u, 46162u, 1u, 45012u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = global4.c.xz;
    var var_1 = ~arg_1.b.e.x;
    global3 = array<i32, 29>();
    return ~(~arg_1.b.e.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    return arg_2;
}

fn func_2(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = Struct_2(func_4(~_wgslsmith_sub_vec2_i32(u_input.d.zz >> (global4.e.wz % vec2<u32>(32u)), vec2<i32>(1i, 1i)), global3[_wgslsmith_index_u32(~func_3(-532f, Struct_2(1u, Struct_1(u_input.d.x, global4.b, vec3<i32>(global4.b.x, -1i, global4.b.x), vec4<f32>(-1643f, -2534f, arg_0, 1450f), vec4<u32>(0u, 0u, arg_1, 6884u)))), 29u)], ~arg_1, vec3<bool>(!any(vec3<bool>(false, true, false)), true, !any(vec2<bool>(true, false)))), Struct_1(firstTrailingBit(~u_input.d.x), ~_wgslsmith_mult_vec2_i32(u_input.d.xy, global4.b) | global4.b, _wgslsmith_clamp_vec3_i32(-(global4.c >> (global4.e.ywx % vec3<u32>(32u))), vec3<i32>(-global3[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_mod_i32(17924i, global4.b.x), global3[_wgslsmith_index_u32(146u, 29u)] | 9963i), ~(~vec3<i32>(global3[_wgslsmith_index_u32(arg_1, 29u)], -42849i, 61377i))), global4.d, reverseBits(global4.e)));
    var var_1 = true;
    global0 = _wgslsmith_f_op_vec2_f32(min(global4.d.xw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.b.d.zz, var_0.b.d.xx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.d.zz) * global4.d.xz)), vec2<bool>(true, true)))));
    global1 = array<vec3<i32>, 30>();
    let var_2 = var_0;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_1, 29u)], global3[_wgslsmith_index_u32(var_2.b.e.x, 29u)]), global4.c.zz)), var_0.b.c.zz << (var_2.b.e.zz % vec2<u32>(32u))), var_2.b.c.yy);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(23427i, firstTrailingBit(-(~_wgslsmith_add_i32(-27421i, -9500i))));
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0.x))), global4.d.ww, !select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), false)))), _wgslsmith_f_op_vec2_f32(-global4.d.wx)));
    let var_1 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(0i, arg_0, 2147483647i, 24515i)), abs(max(vec4<i32>(u_input.c, -24814i, -21025i, 22613i), vec4<i32>(-1i, var_0, 37186i, global3[_wgslsmith_index_u32(4294967295u, 29u)])))), -2147483647i, firstLeadingBit(~(~2147483647i)), func_2(-2073f, global4.e.x) << (~global4.e.x % 32u)));
    var var_2 = Struct_2(_wgslsmith_clamp_u32(~global4.e.x, max(global4.e.x, abs(_wgslsmith_div_u32(0u, 53570u))), ~31334u), Struct_1(_wgslsmith_add_i32(i32(-1i) * -arg_0, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-8652i, 21304i), var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global4.c.x, u_input.c, 1i), vec4<i32>(var_1.x, -35960i, -4i, -50710i)))), global4.b, select(-min(u_input.b, global4.c), min(global4.c, vec3<i32>(global3[_wgslsmith_index_u32(global4.e.x, 29u)], global4.a, global3[_wgslsmith_index_u32(2706u, 29u)])), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), global4.d, vec4<u32>(1u, global4.e.x, global4.e.x, func_3(_wgslsmith_f_op_f32(global0.x - global0.x), Struct_2(global4.e.x, Struct_1(var_1.x, vec2<i32>(u_input.c, -1i), vec3<i32>(942i, -2147483647i, var_0), global4.d, vec4<u32>(49358u, global4.e.x, 4294967295u, global4.e.x)))))));
    let var_3 = Struct_2(_wgslsmith_clamp_u32(4294967295u, ~global4.e.x << (_wgslsmith_dot_vec4_u32(firstTrailingBit(var_2.b.e), ~vec4<u32>(global4.e.x, var_2.b.e.x, var_2.a, 10460u)) % 32u), ~(~115899u >> (global4.e.x % 32u))), var_2.b);
    return Struct_1(9712i, var_2.b.b, -abs(_wgslsmith_mult_vec3_i32(-var_1.xyx, vec3<i32>(2637i, u_input.c, -2147483647i))), _wgslsmith_f_op_vec4_f32(trunc(var_3.b.d)), (_wgslsmith_div_vec4_u32(var_2.b.e, global4.e) << (abs(var_2.b.e) % vec4<u32>(32u))) & (var_3.b.e << (~var_3.b.e % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 30>();
    var var_0 = func_1(2147483647i);
    global2 = array<vec3<u32>, 21>();
    global3 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(min(~(~vec4<u32>(0u, var_0.e.x, global4.e.x, 56103u)), func_1(51197i & var_0.a).e), global4.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1439f, 1000f), -2216f)) - global4.d.x)));
}

