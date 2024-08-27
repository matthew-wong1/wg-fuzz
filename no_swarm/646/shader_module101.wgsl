struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: array<f32, 8>;

var<private> global2: vec2<u32> = vec2<u32>(43206u, 22110u);

var<private> global3: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(55710u, 0u, 4294967295u, 23148u), vec4<u32>(1u, 0u, 1u, 53817u), vec4<u32>(23858u, 0u, 1u, 42472u), vec4<u32>(8504u, 1u, 49556u, 64813u), vec4<u32>(8670u, 33932u, 0u, 52390u), vec4<u32>(1u, 12471u, 0u, 0u), vec4<u32>(1u, 19926u, 4656u, 2369u), vec4<u32>(51798u, 55695u, 0u, 59709u), vec4<u32>(13796u, 20996u, 49699u, 4294967295u), vec4<u32>(16592u, 10330u, 1u, 55945u), vec4<u32>(4294967295u, 33790u, 51310u, 0u), vec4<u32>(20300u, 4294967295u, 43584u, 4294967295u), vec4<u32>(24246u, 62991u, 4294967295u, 88598u), vec4<u32>(1u, 0u, 0u, 28314u), vec4<u32>(2073u, 1u, 84297u, 4294967295u), vec4<u32>(21287u, 0u, 3979u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 54423u), vec4<u32>(1u, 0u, 44046u, 123236u), vec4<u32>(4294967295u, 1u, 3600u, 0u), vec4<u32>(0u, 1u, 1u, 28435u), vec4<u32>(16357u, 4294967295u, 48676u, 1u), vec4<u32>(1u, 12929u, 1u, 15010u));

var<private> global4: bool = false;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -395f)))));
    var var_1 = Struct_2(u_input.a);
    let var_2 = abs(global2.x);
    let var_3 = vec2<u32>(u_input.b, _wgslsmith_mult_u32(~13691u, var_2)) & u_input.a;
    let var_4 = Struct_4(Struct_1(~(~61749u), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.c), u_input.d.x >> (89053u % 32u), u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 33562i, u_input.c), vec3<i32>(37668i, -1i, 2147483647i))), max(min(vec4<i32>(-1212i, -8153i, u_input.d.x, -52136i), vec4<i32>(0i, u_input.c, -84552i, 2147483647i)), ~vec4<i32>(1i, -29626i, 54590i, -2147483647i))), countOneBits(_wgslsmith_div_u32(var_2 << (var_3.x % 32u), var_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_2, 8u)], 1f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(14544u, 8u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8311u, 8u)] + global1[_wgslsmith_index_u32(var_3.x, 8u)])) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1057f, -158f, 1337f, global1[_wgslsmith_index_u32(var_2, 8u)]))))), Struct_1(~1u >> (~(~u_input.b) % 32u), min(-vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, u_input.c) & _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, 1i, 1i), vec4<i32>(u_input.d.x, 10413i, 40324i, u_input.c)), abs(abs(vec4<i32>(u_input.c, -33784i, 12458i, u_input.c)))), 4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 8u)], -976f, global1[_wgslsmith_index_u32(15236u, 8u)], -420f) + vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 8u)], global1[_wgslsmith_index_u32(var_3.x, 8u)], 1000f, global1[_wgslsmith_index_u32(1u, 8u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-323f, -1364f, -306f, 304f) * vec4<f32>(1000f, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], 584f, global1[_wgslsmith_index_u32(var_1.a.x, 8u)]))))), Struct_3(Struct_2(vec2<u32>(global2.x, 0u) & ~var_3), !(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_2, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)])) != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.x, 8u)]))));
    return 1u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(u_input.a);
    global3 = array<vec4<u32>, 22>();
    var var_1 = all(!(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false))));
    var var_2 = global0[_wgslsmith_index_u32(~global2.x, 12u)];
    let var_3 = Struct_4(Struct_1(~0u, _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, 9466i, u_input.c, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), vec4<i32>(-2147483647i, 10061i, 1i, u_input.d.x))) >> (vec4<u32>(abs(global2.x), 58937u, 0u, ~12674u) % vec4<u32>(32u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(global2.x, abs(1u)), 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(946f, var_2.x, var_2.x, -1534f), vec4<f32>(340f, -1000f, -840f, global1[_wgslsmith_index_u32(var_0.a.x, 8u)]))))))), Struct_1(_wgslsmith_clamp_u32(func_3(), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global2.x, u_input.a.x)), countOneBits(var_0.a.x)) >> (~(u_input.a.x << (4294967295u % 32u)) % 32u), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.d.x, -47940i), -1i, u_input.d.x), select(abs(u_input.d.x), select(u_input.d.x, u_input.d.x, false), false), abs(-1i), u_input.d.x), u_input.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2.x, 178f, -544f), vec4<f32>(var_2.x, 1181f, global1[_wgslsmith_index_u32(var_0.a.x, 8u)], var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 8u)], -500f, var_2.x, 273f), vec4<f32>(var_2.x, global1[_wgslsmith_index_u32(39972u, 8u)], -207f, -145f)))))), Struct_3(var_0, any(vec3<bool>(u_input.b <= 0u, true, true))));
    return var_3.c;
}

fn func_1(arg_0: i32) -> vec3<u32> {
    global1 = array<f32, 8>();
    var var_0 = func_2();
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(global2.x, 12u)]);
    var var_2 = var_0.a;
    var_2 = var_0.a;
    return vec3<u32>(0u, global2.x, ~_wgslsmith_add_u32(u_input.a.x ^ (u_input.a.x ^ 1u), _wgslsmith_mod_u32(52943u, 69109u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    global2 = u_input.a;
    let var_0 = _wgslsmith_sub_vec3_u32(func_1(u_input.c), ~_wgslsmith_div_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 8987u, u_input.b), vec3<u32>(global2.x, 35006u, global2.x), vec3<u32>(global2.x, 61469u, u_input.a.x))), firstLeadingBit(vec3<u32>(27812u, 4294967295u, u_input.a.x))));
    global2 = min(u_input.a, ~u_input.a);
    global4 = all(select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(37994u, 8u)] >= global1[_wgslsmith_index_u32(var_0.x, 8u)]), vec4<bool>(true, true, func_2().b, func_2().b), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), select(true, true, true), all(vec2<bool>(false, false))))) == all(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false)), true));
    var var_1 = var_0.x;
    var var_2 = Struct_2(~(_wgslsmith_mod_vec2_u32(var_0.zz, vec2<u32>(var_0.x, 1u) >> (var_0.xy % vec2<u32>(32u))) ^ var_0.zx));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(countOneBits(2147483647i), u_input.d.x, _wgslsmith_add_i32(u_input.d.x, u_input.c)) & 16245i, -1i, u_input.d.x, _wgslsmith_mult_i32(-32411i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-29368i, -17961i, -2147483647i), -vec3<i32>(u_input.d.x, u_input.d.x, 15707i)))), 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(8705u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]))))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, -51784i, 0i), vec3<i32>(u_input.d.x, 0i, u_input.d.x)), _wgslsmith_sub_i32(u_input.d.x, i32(-1i) * -14592i)));
}

