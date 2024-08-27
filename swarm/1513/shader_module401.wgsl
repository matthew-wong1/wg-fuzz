struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(4294967295u, 0u, 80110u, 0u), vec4<u32>(435u, 0u, 1u, 1u), vec4<u32>(1u, 1u, 27266u, 36595u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1u, 25671u, 0u, 4294967295u), vec4<u32>(17797u, 11841u, 0u, 0u), vec4<u32>(1u, 22926u, 53391u, 0u), vec4<u32>(1u, 36360u, 26690u, 1u), vec4<u32>(29258u, 146585u, 15002u, 26457u), vec4<u32>(31516u, 31155u, 4294967295u, 0u), vec4<u32>(86336u, 89656u, 79435u, 20748u), vec4<u32>(38085u, 5694u, 4294967295u, 4294967295u), vec4<u32>(0u, 1375u, 4294967295u, 24602u), vec4<u32>(52024u, 25325u, 1u, 11204u), vec4<u32>(4294967295u, 17736u, 1110u, 95736u), vec4<u32>(0u, 4294967295u, 79571u, 8738u), vec4<u32>(0u, 3294u, 0u, 65845u), vec4<u32>(4294967295u, 2021u, 1172u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(0u, 0u, 7981u, 93485u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(0u, 24282u, 36784u, 0u), vec4<u32>(1u, 53853u, 1u, 23622u), vec4<u32>(56850u, 1u, 1u, 39772u), vec4<u32>(4294967295u, 21675u, 5117u, 55373u), vec4<u32>(27267u, 14411u, 4294967295u, 163u));

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: Struct_5 = Struct_5(vec4<u32>(107776u, 1u, 1u, 66585u), vec2<bool>(false, true), 1u);

var<private> global4: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(-30577i, 2147483647i, 1i, 2147483647i), vec4<i32>(2147483647i, 34322i, 18660i, 2147483647i), vec4<i32>(-27400i, 20946i, 29628i, 0i), vec4<i32>(11224i, -26028i, -40882i, 1i), vec4<i32>(-35536i, 53405i, -73465i, 1i), vec4<i32>(42444i, 1i, -42695i, 1i), vec4<i32>(-3283i, 0i, 0i, -10098i), vec4<i32>(40527i, 0i, 56331i, 1i), vec4<i32>(-13489i, 12858i, -36281i, 38596i), vec4<i32>(8080i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -20394i, 45039i, i32(-2147483648)), vec4<i32>(-1i, -1i, i32(-2147483648), 28800i), vec4<i32>(26686i, i32(-2147483648), -29535i, 1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> f32 {
    var var_0 = any(global2.b);
    var var_1 = select(global3.b, select(!global2.b.xx, !arg_0.b, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, global2.b.x, arg_0.b.x, arg_0.b.x), any(vec3<bool>(true, global3.b.x, false))))), !(!global3.b.x));
    global1 = select(_wgslsmith_f_op_f32(round(-481f)) <= -1249f, any(select(!(!vec3<bool>(false, false, global2.b.x)), !(!global2.b.wyw), vec3<bool>(true, global2.b.x, all(vec4<bool>(true, false, var_1.x, false))))), global2.b.x);
    let var_2 = !any(vec2<bool>(!global2.b.x, true));
    global4 = array<vec4<i32>, 13>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 372f), -418f, select(!global3.b.x, var_2, true)));
}

fn func_2() -> bool {
    let var_0 = Struct_4(Struct_2(Struct_1(-u_input.b | _wgslsmith_div_i32(global2.c.x, -9754i), global2.b, _wgslsmith_sub_vec3_i32(global2.c, global2.c)), ~(~31763u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1080f, -159f))))), !(!select(global2.b.zx, global3.b, vec2<bool>(true, global2.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(707f, -748f, -367f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 560f)), _wgslsmith_f_op_f32(f32(-1f) * -1176f), _wgslsmith_f_op_f32(func_3(Struct_5(vec4<u32>(1u, u_input.a, 64120u, 15634u), global3.b, global3.c)))), vec3<bool>(false, false, true))), ((true && global2.b.x) != any(vec2<bool>(false, false))) && !any(global2.b.xwy), Struct_1(-32271i, !select(!vec4<bool>(false, global3.b.x, global3.b.x, false), !global2.b, !global2.b), -_wgslsmith_add_vec3_i32(vec3<i32>(global2.a, 2147483647i, -21956i), global2.c) & global2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -451f))))));
    var var_1 = u_input.a;
    let var_2 = true;
    let var_3 = _wgslsmith_sub_vec3_u32(global3.a.xwx, vec3<u32>(7955u, 88673u, _wgslsmith_mult_u32(21911u, _wgslsmith_mod_u32(firstTrailingBit(1u), 1u))));
    let var_4 = global3.a;
    return !var_0.c || any(var_0.d.b.wzw);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: f32) -> vec2<f32> {
    let var_0 = vec3<bool>(!global2.b.x, !all(select(select(global2.b, global2.b, global3.b.x), select(global2.b, global2.b, true), global3.a.x >= arg_1.x)), true);
    global2 = Struct_1(global2.a, vec4<bool>(4294967295u > _wgslsmith_mult_u32(4294967295u, arg_1.x), _wgslsmith_sub_u32(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, global3.a.x, u_input.a), vec4<u32>(u_input.a, 18014u, arg_1.x, arg_1.x))) == 4294967295u, var_0.x, true), global2.c);
    let var_1 = ~max(firstLeadingBit(~max(-12818i, arg_0)), global2.a | arg_0);
    let var_2 = select(~(~(~global3.a.wxy)), countOneBits(vec3<u32>(_wgslsmith_mult_u32(7688u, arg_1.x), 12153u, abs(1u))), !(func_2() && (global3.b.x & true))) << ((vec3<u32>(0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.x, arg_1.x, 1u, u_input.a)), firstLeadingBit(vec4<u32>(arg_1.x, 25301u, 7805u, global3.c))), 0u) << (~(~max(vec3<u32>(global3.c, global3.c, 46852u), vec3<u32>(1u, global3.c, global3.a.x))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_mod_u32(~max(var_2.x, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(54894u, 26u)], arg_1) & countOneBits(1u)), u_input.a);
    return _wgslsmith_f_op_vec2_f32(max(arg_2.xy, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_div_f32(arg_2.x, -1946f)))), 1222f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b;
    var var_1 = -1053f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_i32(-1i, ~firstLeadingBit(1i)), select(global2.b, select(select(vec4<bool>(false, false, true, false), global2.b, vec4<bool>(false, false, var_0.x, true)), global2.b, true), !global2.b), vec3<i32>(~(-4307i) >> (u_input.a % 32u), -countOneBits(global2.c.x), _wgslsmith_sub_i32(global2.a << (global3.a.x % 32u), global2.c.x))), firstLeadingBit(countOneBits(6644u) >> (~global3.a.x % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1159f, 401f), vec2<f32>(1395f, 1146f), var_0.wx)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(813f, -515f) + vec2<f32>(116f, -722f))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(-1i, vec4<u32>(1u, u_input.a, global3.a.x, 0u), vec4<f32>(-1699f, -302f, 543f, -869f), -789f)) + vec2<f32>(1448f, -1169f))))), !global2.b.zy);
    var var_3 = ~_wgslsmith_dot_vec3_u32(global3.a.wzy, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(global3.a.xyz, global3.a.wzy), global3.a.wyz, _wgslsmith_mod_vec3_u32(global3.a.wxx, global3.a.zxy)), ~global3.a.yzx));
    var var_4 = Struct_2(var_2.a, u_input.a ^ _wgslsmith_mult_u32(min(global3.c, _wgslsmith_mult_u32(49628u, 0u)), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c)), global2.b.xy);
    var var_5 = global3.a.xz >> (~global3.a.zx % vec2<u32>(32u));
    var var_6 = Struct_2(var_4.a, u_input.a, _wgslsmith_f_op_vec2_f32(-var_4.c), var_4.d);
    let var_7 = Struct_3(var_2.a.b.x, func_2(), -_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(global4[_wgslsmith_index_u32(1u, 13u)] >> (global3.a % vec4<u32>(32u)), global4[_wgslsmith_index_u32(1u, 13u)]), select(global4[_wgslsmith_index_u32(max(101950u, u_input.a), 13u)], global4[_wgslsmith_index_u32(~4294967295u, 13u)], var_6.d.x), vec4<i32>(37206i | global2.a, _wgslsmith_dot_vec3_i32(global2.c, vec3<i32>(-10173i, 59007i, 68553i)), 0i, 40447i)), _wgslsmith_dot_vec4_u32(vec4<u32>(6419u, ~4294967295u, 1u, ~var_2.b) << ((select(global3.a, global3.a, vec4<bool>(var_6.a.b.x, global2.b.x, false, global2.b.x)) << (abs(global3.a) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32((var_2.b << (1u % 32u)) >> (~global3.a.x % 32u), 26u)], ~vec4<u32>(30202u, global3.c, 47785u, 1u))));
    var var_8 = select(select(select(!var_2.a.b, select(select(vec4<bool>(false, var_4.d.x, var_0.x, false), vec4<bool>(true, true, var_4.a.b.x, false), true), !var_2.a.b, true), !global3.b.x), vec4<bool>(global2.b.x, false, func_2(), (false && var_6.a.b.x) | any(vec3<bool>(false, var_7.b, var_7.a))), var_2.a.b), var_4.a.b, global3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(select(global4[_wgslsmith_index_u32(var_2.b, 13u)], vec4<i32>(0i, var_7.c.x, global2.a, var_6.a.c.x), var_4.a.b.x), ~var_7.c), _wgslsmith_mult_vec4_i32(var_7.c, var_7.c) | vec4<i32>(var_7.c.x, 23189i, ~29932i, _wgslsmith_clamp_i32(2147483647i, global2.c.x, var_2.a.c.x))), global2.c.x, _wgslsmith_div_i32(~(i32(-1i) * -33875i), u_input.c.x), -select(select(_wgslsmith_sub_i32(-2147483647i, var_2.a.c.x), _wgslsmith_mod_i32(u_input.c.x, u_input.b), var_0.x != global3.b.x), ~(-22916i), all(var_8.yxz)), _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(global3.c, 67860u)));
}

