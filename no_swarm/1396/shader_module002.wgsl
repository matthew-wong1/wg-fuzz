struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(33848u, 0u), vec3<bool>(true, false, false), vec3<i32>(36564i, i32(-2147483648), 0i), vec4<u32>(4294967295u, 20595u, 23503u, 4294967295u), vec2<f32>(520f, 1372f));

var<private> global1: vec2<f32> = vec2<f32>(1183f, -1000f);

var<private> global2: Struct_3;

var<private> global3: array<bool, 18> = array<bool, 18>(false, false, true, true, true, false, false, true, true, false, true, true, false, true, true, true, true, true);

var<private> global4: array<Struct_4, 17>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global2 = Struct_3(~abs(~global0.d), Struct_1(abs(~vec2<u32>(u_input.b, 64529u) | (vec2<u32>(103297u, 0u) >> (global0.d.wz % vec2<u32>(32u)))), global0.b, global2.b.c, min(vec4<u32>(min(0u, global2.d.a.x), select(u_input.b, global2.a.x, global3[_wgslsmith_index_u32(56604u, 18u)]), global0.a.x, global2.b.a.x), ~max(vec4<u32>(27162u, 7943u, 3947u, 34245u), vec4<u32>(32173u, global2.a.x, u_input.b, 1u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.e), global0.e)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + global2.d.e.x)), -1388f, _wgslsmith_f_op_f32(global0.e.x - _wgslsmith_f_op_f32(exp2(global0.e.x)))), global2.b);
    var var_0 = ~(~select(firstTrailingBit(vec4<u32>(19491u, 1u, global0.a.x, 0u)), abs(vec4<u32>(arg_0, global2.a.x, arg_0, global2.b.a.x)), !global2.b.b.x) >> (countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(24013u, 1u, u_input.b, global0.a.x), vec4<u32>(u_input.b, 1u, global2.d.d.x, 23988u))) % vec4<u32>(32u)));
    var var_1 = Struct_3(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, ~global2.d.a.x, _wgslsmith_mod_u32(1u, 4294967295u), ~var_0.x), firstLeadingBit(~global0.d)), global2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-253f + global1.x), global0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)))), global2.d);
    var var_2 = min(vec3<i32>(_wgslsmith_dot_vec2_i32(global2.d.c.xy >> (vec2<u32>(42335u, var_0.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.x, global2.b.c.x), global0.c.xz)), reverseBits(_wgslsmith_mod_i32(-89011i, u_input.c.x)), ~2147483647i) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(34216u, 11320u, arg_0)), var_0.wzz << (global0.d.xzy % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 4294967295u, global2.b.d.x), firstLeadingBit(global2.b.d)), ~11680u) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_i32(u_input.c.yxy & _wgslsmith_div_vec3_i32(u_input.c.wwz, vec3<i32>(global0.c.x, -72862i, 71898i)), select(u_input.a.yxy, _wgslsmith_mod_vec3_i32(global2.d.c, global2.b.c), !global2.b.b.x)));
    var var_3 = Struct_4(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, var_0.x, 4294967295u), global2.b.d) & ~(~4294967295u), ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.d.d.x, global0.d.x, var_0.x), vec4<u32>(global2.d.d.x, global0.d.x, 4294967295u, 1u)))), Struct_1(vec2<u32>(arg_0, global0.a.x), vec3<bool>(select(true, true, any(global2.d.b)), !(var_1.b.d.x >= 0u), all(global0.b.zz)), global0.c, select(~abs(vec4<u32>(var_1.b.a.x, 1u, var_1.a.x, 86198u)), vec4<u32>(var_1.d.a.x >> (95894u % 32u), 2111u, ~0u, ~var_1.d.a.x), select(select(vec4<bool>(true, global0.b.x, global3[_wgslsmith_index_u32(global2.b.a.x, 18u)], global2.d.b.x), vec4<bool>(false, global3[_wgslsmith_index_u32(global0.a.x, 18u)], false, false), false), !vec4<bool>(global3[_wgslsmith_index_u32(global2.a.x, 18u)], var_1.d.b.x, var_1.b.b.x, global0.b.x), !vec4<bool>(true, global2.b.b.x, global3[_wgslsmith_index_u32(u_input.b, 18u)], true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e + global0.e) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-350f, 869f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.e))), ~global2.b.d.x == _wgslsmith_clamp_u32(1354u, global0.d.x, u_input.b)))));
    return _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(~var_3.b.d, global2.d.d), ~(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 3200u, u_input.b, 4294967295u) & global0.d, global2.d.d >> (global0.d % vec4<u32>(32u))) >> (var_1.a % vec4<u32>(32u))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec2<f32>(-2027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -1733f)));
    global2 = Struct_3(~firstLeadingBit(vec4<u32>(0u, abs(29867u), abs(arg_0), ~4294967295u)), Struct_1(global0.d.zx, !(!(!vec3<bool>(false, true, global0.b.x))), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -56757i), ~arg_1.c), vec3<i32>(_wgslsmith_div_i32(arg_1.c.x, 4285i), _wgslsmith_mult_i32(-1i, global0.c.x), _wgslsmith_add_i32(global0.c.x, arg_1.c.x)), !vec3<bool>(true, false, global2.b.b.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 27095u), func_3(global2.d.d.x)), _wgslsmith_f_op_vec2_f32(select(global0.e, vec2<f32>(_wgslsmith_f_op_f32(-1194f + global2.b.e.x), 504f), arg_1.b.yx))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c) + global2.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1221f, -466f, arg_1.e.x), global2.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.e.x, arg_1.e.x, global0.e.x) - vec3<f32>(-1095f, -622f, global2.b.e.x))))), Struct_1(~(~(global2.b.d.yz >> (arg_1.a % vec2<u32>(32u)))), select(vec3<bool>(!global2.b.b.x, !global3[_wgslsmith_index_u32(4489u, 18u)], false || global2.d.b.x), select(!global2.b.b, vec3<bool>(false, global0.b.x, true), global0.b), select(select(global2.d.b, vec3<bool>(global0.b.x, true, arg_1.b.x), vec3<bool>(true, global3[_wgslsmith_index_u32(global0.d.x, 18u)], false)), select(arg_1.b, global0.b, arg_1.b), arg_1.b)), ~_wgslsmith_mult_vec3_i32(global0.c, vec3<i32>(arg_1.c.x, global0.c.x, -14503i)) ^ vec3<i32>(12855i, abs(global2.d.c.x), -26078i), abs(arg_1.d) ^ vec4<u32>(1u, abs(global0.a.x), _wgslsmith_add_u32(69054u, 1u), 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global0.e.x) * _wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_div_f32(global2.d.e.x, _wgslsmith_f_op_f32(-var_0.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, arg_1.e.x, global1.x, 299f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(561f, global0.e.x, -2015f, arg_1.e.x), vec4<f32>(global0.e.x, global0.e.x, global0.e.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(global2.b.e.x * global0.e.x), _wgslsmith_f_op_f32(-global2.d.e.x), _wgslsmith_f_op_f32(min(-134f, -1000f)))), true)), vec4<f32>(1625f, 2135f, arg_1.e.x, global0.e.x), false));
    global4 = array<Struct_4, 17>();
    var var_2 = arg_1.b.x;
    return Struct_2(global0.b.x, global2.b.e.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2;
    global1 = global2.c.xz;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(511f)))));
    let var_2 = reverseBits(min(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(global2.b.a.x, 1u, global2.d.d.x), global2.d.d.yzw, global2.b.b), abs(global0.d.xzy), func_3(u_input.b).zzx), ~vec3<u32>(global0.a.x, 20577u, 4294967295u)), _wgslsmith_mult_vec3_u32(~(~global2.b.d.xwy), global2.d.d.yzz)));
    let var_3 = u_input.a.x;
    return global2.b;
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(219f))), _wgslsmith_f_op_f32(f32(-1f) * -1359f), 1030f, _wgslsmith_f_op_f32(1158f - arg_0.b.e.x))), func_2(~(~(~31963u)), Struct_1(~vec2<u32>(u_input.b, global0.d.x), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(global3[_wgslsmith_index_u32(global0.a.x, 18u)], global2.d.b.x, arg_0.b.b.x), arg_0.b.b), global2.d.b), u_input.a.zzy, _wgslsmith_mod_vec4_u32(global0.d, vec4<u32>(710u, u_input.b, u_input.b, global2.b.d.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, arg_0.b.e.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-979f - global0.e.x))), 474f)), _wgslsmith_mult_i32(0i, countOneBits(global0.c.x | -6805i)) >> (1u % 32u));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-523f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1363f)), func_4(vec4<f32>(global0.e.x, global1.x, 556f, arg_0.b.e.x), Struct_2(global0.b.x, global0.e.x), -2006f, arg_0.b.c.x).e.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.c.x * 181f), _wgslsmith_f_op_f32(global2.c.x - 812f)))) + vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), -268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -522f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global0.e.x)))), func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 61366u, 0u), global2.a.wyw), vec3<u32>(global2.b.a.x, 47778u, u_input.b) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(10734u, u_input.b, 1u), vec3<u32>(4294967295u, 0u, u_input.b)) % vec3<u32>(32u))), func_4(vec4<f32>(-839f, _wgslsmith_f_op_f32(min(-1769f, global0.e.x)), global2.d.e.x, _wgslsmith_div_f32(global1.x, global0.e.x)), Struct_2(arg_0.b.b.x, global0.e.x), arg_0.b.e.x, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, global0.e.x), 763f, global2.b.b.x)))), 1i);
    let var_0 = global0.b.x;
    var var_1 = func_3(arg_0.b.d.x).zyw;
    let var_2 = Struct_5(~func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1398f, 1254f, global1.x, 555f), vec4<f32>(global0.e.x, -715f, 271f, global2.c.x)) - vec4<f32>(global2.d.e.x, global1.x, -254f, global1.x)), func_2(u_input.b, func_4(vec4<f32>(global0.e.x, 1000f, arg_0.b.e.x, 875f), Struct_2(arg_0.b.b.x, global2.b.e.x), global0.e.x, global2.d.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1398f)), arg_0.b.c.x >> ((0u << (global2.d.a.x % 32u)) % 32u)).d);
    return Struct_4(vec2<u32>(~var_1.x, _wgslsmith_sub_u32(689u << (_wgslsmith_div_u32(1u, arg_0.b.a.x) % 32u), 1u)), Struct_1(vec2<u32>(~33798u, ~20194u), !select(select(arg_0.b.b, vec3<bool>(arg_0.b.b.x, global0.b.x, false), false), !global2.d.b, func_4(vec4<f32>(arg_0.b.e.x, 880f, global1.x, -100f), Struct_2(global3[_wgslsmith_index_u32(52972u, 18u)], global2.c.x), global0.e.x, arg_0.b.c.x).b.x), ~global0.c, ~vec4<u32>(~var_2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 0u, global0.d.x), vec3<u32>(var_2.a.x, 4294967295u, 0u)), var_2.a.x >> (var_1.x % 32u), 38640u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 222f) - -229f), 221f)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> vec2<f32> {
    global3 = array<bool, 18>();
    var var_0 = vec3<i32>(-1i) * -global2.d.c;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.b.e));
    global1 = vec2<f32>(-1265f, _wgslsmith_div_f32(1039f, _wgslsmith_f_op_f32(ceil(-1000f))));
    global2 = Struct_3(arg_3.b.d, Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(0u, ~58965u), abs(~vec2<u32>(arg_2.d.x, 0u))), vec3<bool>(global0.c.x > _wgslsmith_mod_i32(global2.d.c.x, arg_3.b.c.x), true, arg_0.a), countOneBits(max(arg_3.b.c, vec3<i32>(29905i, 1i, 0i) & arg_3.b.c)), global0.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.b.e.x, arg_3.b.e.x), _wgslsmith_f_op_vec2_f32(min(global0.e, arg_2.e))))))), global2.c, arg_3.b);
    return arg_3.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(vec4<u32>(4294967295u, u_input.b, ~1u, 52581u), global2.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-651f, 583f)), global0.e.x, global0.e.x), global2.c)), global2.b);
    let var_0 = Struct_1(vec2<u32>(57257u, reverseBits(reverseBits(global0.a.x >> (1u % 32u)))), vec3<bool>(select(!any(global2.d.b.xz), any(global2.b.b.zy), true), any(vec2<bool>(global0.b.x, global2.b.b.x && global2.d.b.x)), true), ~vec3<i32>(0i, global2.d.c.x, u_input.a.x), global2.a >> (select(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, u_input.b, u_input.b, 9934u), global0.d), global2.a, global2.b.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_div_f32(global2.c.x, global0.e.x)) + _wgslsmith_f_op_vec2_f32(func_5(Struct_2(false, global1.x), !global2.d.b.x, global2.d, func_1(Struct_4(vec2<u32>(4294967295u, 10369u), Struct_1(global2.a.ww, global0.b, vec3<i32>(0i, global2.b.c.x, u_input.a.x), global0.d, global0.e)))))))));
    var var_1 = reverseBits(_wgslsmith_clamp_vec4_i32(~max(vec4<i32>(-50137i, global0.c.x, global2.b.c.x, -20395i), u_input.a), _wgslsmith_clamp_vec4_i32(u_input.c, -u_input.c, u_input.a), vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, -1i))) ^ ~u_input.c;
    var var_2 = func_2(abs(_wgslsmith_dot_vec4_u32(global0.d >> (~vec4<u32>(79102u, var_0.d.x, global2.d.a.x, var_0.a.x) % vec4<u32>(32u)), ~max(vec4<u32>(global2.b.d.x, 4294967295u, 4294967295u, u_input.b), var_0.d))), func_4(vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_2(false, 917f), false, global2.d, global4[_wgslsmith_index_u32(u_input.b, 17u)])).x, -932f), global0.e.x, _wgslsmith_f_op_f32(round(var_0.e.x))), Struct_2(global2.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-446f, 403f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(633f)))))), reverseBits(firstLeadingBit(global0.c.x))));
    global3 = array<bool, 18>();
    global2 = Struct_3(~abs(vec4<u32>(u_input.b, ~u_input.b, global2.b.a.x, 62302u)), global2.b, global2.c, func_1(Struct_4(_wgslsmith_mod_vec2_u32(func_1(global4[_wgslsmith_index_u32(var_0.d.x, 17u)]).a, vec2<u32>(0u, 0u)), func_4(vec4<f32>(-1014f, global0.e.x, global1.x, var_2.b), func_2(18222u, var_0), -374f, _wgslsmith_clamp_i32(24604i, 40974i, -1i)))).b);
    let var_3 = _wgslsmith_f_op_f32(-var_0.e.x);
    var var_4 = global2.d;
    let x = u_input.a;
    s_output = StorageBuffer(-574f, _wgslsmith_f_op_vec3_f32(trunc(global2.c)));
}

