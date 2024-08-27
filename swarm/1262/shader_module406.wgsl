struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<bool>;

var<private> global2: array<f32, 5> = array<f32, 5>(-605f, 1000f, -1603f, -525f, -175f);

var<private> global3: Struct_4;

var<private> global4: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(4294967295u, 16331u, 2684u), vec3<u32>(40206u, 96512u, 0u), vec3<u32>(11907u, 0u, 1u), vec3<u32>(1u, 1u, 17559u), vec3<u32>(19211u, 55042u, 79030u), vec3<u32>(20435u, 1u, 86081u), vec3<u32>(28800u, 0u, 0u), vec3<u32>(3095u, 0u, 0u), vec3<u32>(1u, 8663u, 17767u), vec3<u32>(53871u, 33289u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 27631u, 47857u), vec3<u32>(4294967295u, 41910u, 55487u), vec3<u32>(29539u, 1u, 4294967295u), vec3<u32>(20852u, 0u, 0u), vec3<u32>(85060u, 4294967295u, 7476u), vec3<u32>(0u, 1u, 1u), vec3<u32>(64529u, 4294967295u, 6188u), vec3<u32>(35141u, 1u, 1u), vec3<u32>(27269u, 21158u, 0u), vec3<u32>(0u, 67515u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 26407u, 4294967295u), vec3<u32>(6851u, 21691u, 37368u), vec3<u32>(4294967295u, 4294967295u, 38089u), vec3<u32>(1u, 28542u, 4294967295u), vec3<u32>(51840u, 70466u, 49789u), vec3<u32>(6937u, 1u, 25862u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = 1478f;
    global0 = ~global3.a.a.x;
    var var_1 = _wgslsmith_mult_u32(global3.a.a.x, _wgslsmith_div_u32(global3.a.e.a.x, u_input.c));
    global1 = vec3<bool>(true, global1.x, false);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(377f, global2[_wgslsmith_index_u32(~global3.a.a.x, 5u)]))))), -847f));
    return true;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.c | 53465u;
    let var_1 = vec3<u32>(reverseBits(u_input.a), 4294967295u, ~(~46493u) ^ abs(global3.a.e.a.x));
    var var_2 = i32(-1i) * -9455i;
    let var_3 = global4[_wgslsmith_index_u32(u_input.a, 28u)];
    var var_4 = ~global4[_wgslsmith_index_u32(4294967295u, 28u)];
    return Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(global3.a.a.x, 5u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global3.a.c, _wgslsmith_f_op_f32(-global3.a.e.c.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(var_3.x, 5u)])), _wgslsmith_f_op_f32(-151f * global3.a.c))), func_3()))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(304f, _wgslsmith_f_op_f32(global3.a.b.a.x - global3.a.b.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a.b.b.x * global2[_wgslsmith_index_u32(4294967295u, 5u)]))), -1321f)), !vec2<bool>(global3.a.d.x, !arg_0.x), any(select(vec4<bool>(false, arg_0.x, global3.a.e.d.x, global3.a.b.c.x), !global3.a.d, global1.x)) && !func_3());
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = all(vec2<bool>(all(!vec4<bool>(arg_3.d, true, true, true)), arg_3.c.x));
    let var_1 = max(min(abs(arg_2), -(i32(-1i) * -u_input.b.x)), reverseBits(abs(-38195i) & u_input.b.x));
    global4 = array<vec3<u32>, 28>();
    global2 = array<f32, 5>();
    global4 = array<vec3<u32>, 28>();
    return ~select(arg_1, ~abs(arg_1), var_0);
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(21419i);
    global0 = ~_wgslsmith_sub_u32(27774u, u_input.c);
    var var_1 = Struct_4(Struct_3(func_4(func_2(!global3.a.d.zw), vec2<u32>(~u_input.a, global3.a.e.a.x), u_input.b.x, global3.a.b), global3.a.b, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global3.a.a.x, global3.a.a.x), 5u)]), vec4<bool>(false, all(select(vec3<bool>(true, global1.x, global3.a.e.b.d), global3.a.d.xxw, global1.x)), !all(vec3<bool>(global3.a.d.x, false, true)), all(vec2<bool>(false, global3.a.e.c.c.x))), global3.a.e));
    let var_2 = global3.a;
    let var_3 = Struct_3(vec2<u32>(global3.a.a.x, _wgslsmith_mult_u32(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), var_1.a.e.a.yz))) ^ ~(~max(var_2.e.a.zz, vec2<u32>(0u, var_2.e.a.x))), global3.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.b.x)), !vec4<bool>(all(select(var_2.d, vec4<bool>(var_1.a.b.c.x, var_2.d.x, global1.x, var_1.a.e.d.x), true)), var_2.e.c.d, !global3.a.d.x, (u_input.d > 1i) && (var_2.b.c.x || false)), global3.a.e);
    return func_2(func_2(vec2<bool>(all(global3.a.d.yyz), !global1.x)).c);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    global4 = array<vec3<u32>, 28>();
    return Struct_4(Struct_3(select(arg_2.e.a.zz, _wgslsmith_mod_vec2_u32(~arg_2.e.a.zw, abs(global3.a.e.a.xw)), global3.a.b.c), global3.a.b, -175f, select(select(vec4<bool>(global3.a.b.c.x, arg_2.e.b.c.x, arg_0.c.x, global3.a.b.c.x), !vec4<bool>(false, arg_2.e.b.c.x, global1.x, arg_2.d.x), !vec4<bool>(global3.a.b.d, arg_2.b.d, global1.x, global3.a.d.x)), !(!global3.a.d), true), Struct_2(~vec4<u32>(u_input.a, 4294967295u, 0u, global3.a.a.x) >> (global3.a.e.a % vec4<u32>(32u)), global3.a.b, func_2(!global3.a.e.c.c), vec3<bool>(global3.a.e.d.x, false, true))));
}

fn func_6(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 5u)])));
    global3 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_3.a.b.b.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(943f, 1000f)), global1.zz)), arg_3.a.e.c.a)), func_2(!func_2(global3.a.d.zy).c).b, select(select(!global1.xy, vec2<bool>(arg_3.a.d.x, false), !global1.xx), global1.yx, any(select(arg_3.a.e.d, vec3<bool>(global1.x, false, true), global3.a.d.x))), !any(vec4<bool>(global3.a.d.x, global1.x, arg_3.a.e.d.x, global3.a.e.d.x))), global3.a.e.a.x, global3.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(5272i ^ -u_input.d, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-3119i, 59930i, 5884i), vec3<i32>(75251i, u_input.b.x, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec3<i32>(0i, u_input.b.x, 1848i)))), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 13930i, -1i), -vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))));
    let var_1 = global1.xy;
    global0 = 7117u;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a.e.b.a.x, _wgslsmith_f_op_f32(floor(1000f))))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-746f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 - global2[_wgslsmith_index_u32(2600u, 5u)]))))), arg_3.a.b.a.x);
    return Struct_5(max(firstLeadingBit(u_input.c), ~1u), _wgslsmith_f_op_f32(global3.a.b.b.x + -657f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~4294967295u);
    let var_0 = func_6(max(vec2<u32>(abs(select(53066u, 0u, global1.x)), u_input.c), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), countOneBits(vec2<u32>(0u, global3.a.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c, 5u)], -805f)), 1133f))), ~global3.a.a, func_5(func_1(), 26800u, global3.a, _wgslsmith_div_i32(abs(u_input.b.x ^ -48863i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.d, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(23561i, -8180i, 5236i, -28411i), vec4<i32>(1i, u_input.b.x, 289i, u_input.b.x))))));
    var var_1 = _wgslsmith_mult_vec3_u32(global4[_wgslsmith_index_u32(~11583u, 28u)], global4[_wgslsmith_index_u32(u_input.a, 28u)]);
    let var_2 = global3.a.d;
    var var_3 = vec3<bool>(true, global3.a.d.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec2_i32(u_input.b ^ u_input.b, reverseBits(vec2<i32>(u_input.d, u_input.d)))), vec4<u32>(42871u, abs(_wgslsmith_clamp_u32(0u, 1u, 52240u)), func_4(func_1(), countOneBits(global3.a.a), -12847i, global3.a.e.b).x, global3.a.e.a.x) << (vec4<u32>(var_1.x, global3.a.e.a.x, _wgslsmith_clamp_u32(var_1.x, min(var_0.a, var_0.a), 57613u), var_0.a) % vec4<u32>(32u)), var_0.a & _wgslsmith_mod_u32(var_1.x << (11238u % 32u), select(select(4294967295u, 45649u, false), 4294967295u, false)), vec2<u32>(31045u, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.b.b.x, var_0.b) + vec2<f32>(global3.a.e.c.b.x, var_0.b)), vec3<f32>(-989f, 1203f, -1464f), func_1().c, global1.x), vec2<u32>(15408u, ~var_1.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(44447i, 1i, u_input.b.x), vec3<i32>(u_input.b.x, -2147483647i, -8893i), vec3<i32>(-1i, u_input.d, -2147483647i)), vec3<i32>(2147483647i, -2147483647i, -2147483647i) ^ vec3<i32>(u_input.b.x, -1i, -52900i)), func_5(Struct_1(global3.a.b.b.yx, global3.a.b.b, var_2.zz, var_2.x), 1u, Struct_3(var_1.zx, global3.a.e.c, global3.a.c, global3.a.d, global3.a.e), u_input.d).a.e.c).x));
}

