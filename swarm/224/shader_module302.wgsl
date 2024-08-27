struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: array<Struct_1, 18>;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(1115f, vec2<i32>(-28007i, 2147483647i), vec3<bool>(false, true, false)), Struct_2(-1003f, vec2<i32>(0i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_2(-120f, vec2<i32>(-1i, 2147483647i), vec3<bool>(false, true, false)), Struct_2(1403f, vec2<i32>(63899i, -1i), vec3<bool>(false, true, true)), Struct_2(1000f, vec2<i32>(1i, 0i), vec3<bool>(true, true, true)), Struct_2(-1000f, vec2<i32>(32036i, 11194i), vec3<bool>(true, true, true)), Struct_2(-2254f, vec2<i32>(-1i, 61953i), vec3<bool>(true, true, true)), Struct_2(-2589f, vec2<i32>(i32(-2147483648), -61591i), vec3<bool>(true, false, true)), Struct_2(-609f, vec2<i32>(1i, 9227i), vec3<bool>(false, true, true)));

var<private> global4: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    return -arg_1;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4) -> f32 {
    global1 = array<Struct_1, 18>();
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.b, ~abs(countOneBits(arg_0.x)))), 9u)];
    var var_1 = arg_1;
    let var_2 = ~var_1.d.xwz;
    let var_3 = false;
    return _wgslsmith_f_op_f32(ceil(1f));
}

fn func_1() -> Struct_4 {
    global4 = -2147483647i;
    var var_0 = vec3<bool>(select(all(!(!vec2<bool>(global2.x, true))), func_2(74839i, 1i, ~u_input.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1344f, -201f, -839f, 1319f)))) <= ((u_input.a.x ^ 0i) ^ 960i), _wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.c.x, u_input.c.x), Struct_4(vec2<bool>(false, global2.x), Struct_3(u_input.a), Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, -1i, 0i)))) != _wgslsmith_f_op_f32(func_3(~u_input.c.yz, Struct_4(vec2<bool>(true, true), Struct_3(vec3<i32>(u_input.a.x, 0i, u_input.a.x)), Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2147483647i))))), all(vec4<bool>(-u_input.a.x <= (u_input.a.x << (11201u % 32u)), _wgslsmith_f_op_f32(trunc(-1000f)) == _wgslsmith_f_op_f32(-111f * -209f), any(!vec4<bool>(true, global2.x, true, global2.x)), any(select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(false, true, false, true), global2.x)))), any(select(!select(vec4<bool>(true, true, global2.x, false), vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(true, global2.x, global2.x, true)), select(!vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), global2.x), any(vec2<bool>(global2.x, false)))));
    var var_1 = Struct_1(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -147f), -1000f, any(global0[_wgslsmith_index_u32(u_input.d, 3u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 227f)))) * -2100f), ~u_input.d <= (~_wgslsmith_mult_u32(38514u, u_input.d) >> (abs(~5006u) % 32u)), u_input.d);
    let var_2 = false;
    let var_3 = Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -33891i, 1i), vec3<i32>(u_input.a.x, 34447i, u_input.a.x)))), vec3<i32>(-abs(0i), -u_input.a.x, firstTrailingBit(-1i))));
    return Struct_4(var_0.xz, Struct_3(abs(abs(vec3<i32>(37954i, -24202i, var_3.a.x)))), var_3, vec4<i32>(select(128257i, -14287i, false | (true != global2.x)), -_wgslsmith_mult_i32(~19504i, var_3.a.x), u_input.a.x >> (countOneBits(abs(var_1.d)) % 32u), var_3.a.x));
}

fn func_4(arg_0: Struct_4) -> vec2<bool> {
    global4 = min(45241i, -(func_1().b.a.x & -u_input.a.x));
    global2 = arg_0.a;
    global1 = array<Struct_1, 18>();
    let var_0 = 25591u;
    var var_1 = ~(u_input.c.x >> (~max(u_input.d & var_0, _wgslsmith_clamp_u32(0u, 37390u, var_0)) % 32u));
    return vec2<bool>((_wgslsmith_sub_u32(~6961u, _wgslsmith_div_u32(u_input.d, 0u)) >> (reverseBits(76364u) % 32u)) > 94998u, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 9>();
    var var_0 = _wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.a.x);
    global2 = func_4(func_1());
    var var_1 = func_1().b;
    var var_2 = var_1.a.x << (firstTrailingBit(1u << ((~u_input.d >> (u_input.b % 32u)) % 32u)) % 32u);
    var_0 = -(~var_1.a.x);
    var var_3 = countOneBits(~vec2<u32>(u_input.d >> (u_input.d % 32u), u_input.b >> (0u % 32u))) & vec2<u32>(264u, 33452u);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2157f, -1216f, -1289f, -1563f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(692f, 1113f, 1252f, -344f) - vec4<f32>(-956f, -950f, 975f, 1123f)), !vec4<bool>(global2.x, global2.x, true, false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2156f + 515f)), _wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) + -1171f), _wgslsmith_f_op_f32(-1202f - 580f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f * -868f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(461f + 2018f), _wgslsmith_div_f32(329f, -815f))))), select(u_input.a.zz, vec2<i32>(-1i) * -var_4.c.a.xx, func_4(Struct_4(select(var_4.a, vec2<bool>(global2.x, true), true), var_4.c, func_1().b, vec4<i32>(-2147i, -2435i, var_4.c.a.x, 71440i)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1277f) + _wgslsmith_f_op_f32(abs(-1301f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-558f, 1000f, var_4.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1327f - 395f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -820f), 1000f, !var_4.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(170f + 1441f), _wgslsmith_f_op_f32(floor(1000f)), -539f, -1615f) + vec4<f32>(_wgslsmith_f_op_f32(1264f + -1000f), -294f, _wgslsmith_f_op_f32(min(-607f, 347f)), -334f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1130f, 462f, -448f, 1095f))))));
}

