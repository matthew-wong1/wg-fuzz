struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(7883u, 49359u), vec2<u32>(51917u, 1267u), vec3<u32>(1u, 29990u, 4294967295u), vec2<i32>(20399i, 24444i));

var<private> global1: array<f32, 9>;

var<private> global2: array<u32, 21>;

var<private> global3: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-3762i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(-19374i, 0i), vec2<i32>(-94911i, i32(-2147483648)), vec2<i32>(-212i, 2147483647i), vec2<i32>(14894i, 1i), vec2<i32>(17921i, -18163i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -864f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.c.x, 21u)], 9u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 21u)], 9u)]))), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5297u, 9u)] * global1[_wgslsmith_index_u32(1u, 9u)]), global1[_wgslsmith_index_u32(~0u, 9u)], _wgslsmith_f_op_f32(-429f * -503f), arg_0)))));
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-897f + 1927f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2524f - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2123f, arg_0))))), 1444f) + _wgslsmith_f_op_vec3_f32(var_0.xxw - var_0.xxw));
    let var_3 = arg_1;
    global3 = array<vec2<i32>, 8>();
    return Struct_1(vec2<u32>(_wgslsmith_mult_u32(var_3, _wgslsmith_mod_u32(var_3, global2[_wgslsmith_index_u32(var_3, 21u)])), 4294967295u), vec2<u32>(~(~1u), arg_1) >> (_wgslsmith_mod_vec2_u32(global0.a, firstLeadingBit(global0.b | global0.c.xy)) % vec2<u32>(32u)), select(vec3<u32>(global0.b.x, 1u >> (~4294967295u % 32u), ~4294967295u), _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, arg_1, 9462u), vec3<u32>(11267u, 0u, 112798u)), vec3<u32>(abs(global2[_wgslsmith_index_u32(global0.a.x, 21u)]), 1u, countOneBits(4294967295u))), select(vec3<bool>(-44815i != u_input.a.x, global1[_wgslsmith_index_u32(20571u, 9u)] >= arg_0, !arg_2.x), !vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(any(vec2<bool>(true, true)), true, true))), max(-(~(global3[_wgslsmith_index_u32(54646u, 8u)] & vec2<i32>(u_input.e, 0i))), vec2<i32>(select(countOneBits(-38852i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, global0.d.x), global3[_wgslsmith_index_u32(4294967295u, 8u)]), all(vec3<bool>(arg_2.x, false, false))), -33973i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec2<u32> {
    global2 = array<u32, 21>();
    let var_0 = ~20992u;
    global2 = array<u32, 21>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0, 9u)], 1000f, -1511f, -781f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(19070u, 9u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 21u)], 9u)], global1[_wgslsmith_index_u32(10987u, 9u)], -1671f))))))))));
    let var_2 = func_1(_wgslsmith_f_op_f32(-911f + _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(72785u, 32373u), 21u)]), 9u)]))), 53560u << (1u % 32u), !vec4<bool>(true, true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), true && all(vec3<bool>(true, false, false))));
    return var_2.c.zy;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = any(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, false, true)), vec4<bool>(any(vec3<bool>(true, false, false)), true || select(false, true, false), true, any(vec2<bool>(true, true)) | any(vec2<bool>(true, true))), 169f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1, 9u)] - -2001f) + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 21u)], 9u)])))));
    let var_1 = _wgslsmith_sub_u32(arg_1, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~global0.c.zx, vec2<u32>(28712u, arg_1) ^ func_3(vec3<i32>(-35952i, global0.d.x, u_input.d), global0.c.xx)), reverseBits(~global0.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(select(global0.a.x, 1u, true) << (func_3(vec3<i32>(2147483647i, global0.d.x, 1i), vec2<u32>(global0.a.x, global2[_wgslsmith_index_u32(arg_0.c.x, 21u)])).x % 32u), 9u)], -2461f, global1[_wgslsmith_index_u32(global0.a.x, 9u)])))));
    let var_3 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false))), vec4<bool>(true, true, select(false, true, true), false)), select(vec4<bool>(any(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, false, false)), true, all(vec4<bool>(false, true, true, false))), vec4<bool>(global1[_wgslsmith_index_u32(0u, 9u)] > global1[_wgslsmith_index_u32(global0.c.x, 9u)], true, true, true), vec4<bool>(true, true, true, true)));
    global3 = array<vec2<i32>, 8>();
    return _wgslsmith_mult_u32(0u, global0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.x;
    var var_1 = Struct_1(~_wgslsmith_sub_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(global0.b, vec2<u32>(global0.b.x, global0.b.x))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0.b.x), vec2<u32>(41187u, global0.b.x)), abs(vec2<u32>(0u, 21270u)))), vec2<u32>(_wgslsmith_clamp_u32(max(72857u, global2[_wgslsmith_index_u32(98979u | global0.c.x, 21u)]), func_2(func_1(-1000f, 17169u, vec4<bool>(false, true, true, false)), 1u), ~countOneBits(global0.b.x)), 1u), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(~firstTrailingBit(~global0.a.x), 21u)], 73964u), (vec2<i32>(-global0.d.x, ~(-2147483647i)) | global0.d) << (~(~global0.a) % vec2<u32>(32u)));
    global2 = array<u32, 21>();
    var var_2 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.b.x, _wgslsmith_mod_u32(func_2(Struct_1(var_1.a, vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(4294967295u, global0.c.x, var_1.c.x), vec2<i32>(var_1.d.x, global0.d.x)), global2[_wgslsmith_index_u32(1u, 21u)]), global2[_wgslsmith_index_u32(4294967295u, 21u)] >> (13711u % 32u))), vec2<u32>(~(0u >> (1u % 32u)) | global2[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(global0.a.x, 21u)], var_1.b.x), vec4<u32>(global2[_wgslsmith_index_u32(var_1.a.x, 21u)], global2[_wgslsmith_index_u32(var_1.c.x, 21u)], global0.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.x, 21u)], 21u)])) << (vec4<u32>(4294967295u, global0.b.x, 41194u, global2[_wgslsmith_index_u32(4294967295u, 21u)]) % vec4<u32>(32u)), (vec4<u32>(global0.a.x, 41720u, global0.b.x, 83123u) >> (vec4<u32>(32379u, global0.b.x, 64669u, 55184u) % vec4<u32>(32u))) << (~vec4<u32>(global0.b.x, global2[_wgslsmith_index_u32(0u, 21u)], global0.b.x, 4294967295u) % vec4<u32>(32u)))), var_1.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(754f, global1[_wgslsmith_index_u32(var_2.x, 9u)]))))))));
    let var_4 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 9u)] - -349f), var_3.x))) * global1[_wgslsmith_index_u32(firstLeadingBit(~3463u), 9u)]), _wgslsmith_mod_u32(abs(1u), _wgslsmith_mod_u32(global0.a.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_1.a.x, 12571u, _wgslsmith_dot_vec4_u32(vec4<u32>(44922u, var_2.x, 101685u, var_2.x), vec4<u32>(global0.b.x, 9103u, global0.c.x, 0u))), 21u)])), select(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, true)) == true));
    var var_5 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, 4294967295u), ~global0.a.x, global2[_wgslsmith_index_u32(11868u, 21u)]), _wgslsmith_clamp_vec3_u32(~var_4.c | (vec3<u32>(var_2.x, 42238u, 48998u) & vec3<u32>(var_2.x, 35154u, var_4.a.x)), ~(var_4.c >> (vec3<u32>(global0.b.x, global0.a.x, var_4.a.x) % vec3<u32>(32u))), var_4.c) ^ (var_4.c | vec3<u32>(func_3(u_input.a.wwx, var_4.b).x, global2[_wgslsmith_index_u32(var_4.a.x, 21u)], func_1(1357f, 80u, vec4<bool>(false, true, false, false)).a.x)));
    let var_6 = func_1(-2129f, ~(_wgslsmith_mult_u32(51800u, global0.c.x) | 100926u), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))).d.x | _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global0.d.x << (1726u % 32u), max(-2147483647i, 2147483647i)), global0.d.x, i32(-1i) * -14062i, firstLeadingBit(-10463i) | (var_4.d.x >> (var_4.a.x % 32u))), vec4<i32>(20707i, _wgslsmith_dot_vec3_i32(u_input.a.zwy, vec3<i32>(3203i, var_1.d.x, var_4.d.x)) >> (_wgslsmith_clamp_u32(66577u, var_1.a.x, var_2.x) % 32u), select(-var_4.d.x, u_input.e, true), ~(~58238i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~(_wgslsmith_sub_vec3_u32(global0.c, vec3<u32>(var_1.c.x, global0.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a.x, 21u)], 21u)])) << (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_4.a.x, 21u)], 21u)], var_2.x, var_2.x) % vec3<u32>(32u))), ~var_4.c), var_3.x, (u_input.a.yw << (global0.c.yx % vec2<u32>(32u))) & var_4.d, u_input.a.xwz, global2[_wgslsmith_index_u32(~(_wgslsmith_add_u32(1u, ~var_1.a.x) & (firstTrailingBit(4294967295u) ^ global0.a.x)), 21u)]);
}

