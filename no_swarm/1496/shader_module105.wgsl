struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(1u, 1u), 3806i, Struct_1(211f, 322f, 0u, vec2<bool>(false, false), 12148u), true);

var<private> global2: vec3<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-global1.c.b);
    global0 = array<bool, 5>();
    var var_1 = ~4305u;
    var_1 = global1.c.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.b)));
    return var_2;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    global1 = arg_0;
    var var_0 = -firstTrailingBit(u_input.b);
    global2 = !(!select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(global1.a.x, 5u)], true)), !select(vec3<bool>(global0[_wgslsmith_index_u32(35287u, 5u)], false, global1.d), vec3<bool>(global2.x, global2.x, false), arg_0.d), !select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 5u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 5u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 5u)], arg_0.c.d.x, false))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -893f), global1.c.b, -1000f, _wgslsmith_f_op_f32(func_3(!vec4<bool>(true, global1.a.x == 0u, arg_0.d, all(vec3<bool>(true, global1.d, true))), vec2<bool>(true, false), vec3<bool>(global2.x, arg_0.d && any(vec4<bool>(false, global1.d, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)])), false), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, abs(u_input.b.x)), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)))));
    var_0 = _wgslsmith_add_vec3_i32(~((vec3<i32>(-1i, arg_0.b, 37846i) >> (vec3<u32>(30406u, arg_2.x, 4294967295u) % vec3<u32>(32u))) | vec3<i32>(2147483647i, arg_0.b, 30026i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, arg_0.b, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i, global1.b, 0i))), u_input.b)) << ((~(~firstTrailingBit(arg_2.xwz)) | (~vec3<u32>(global1.a.x, 38070u, u_input.a.x) & arg_2.yyw)) % vec3<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(-global1.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b)) + _wgslsmith_f_op_f32(1000f + var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b))), 71991u, global2.xx, ~arg_2.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<u32>) -> i32 {
    let var_0 = ~u_input.c;
    var var_1 = func_2(arg_1.e, global1.c.b, vec4<u32>(firstTrailingBit(~(5002u << (1u % 32u))), 1u, ~arg_2.x, _wgslsmith_sub_u32(26910u, 17895u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(func_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.c.b * 1246f)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3115u, 1u, 23307u, 0u), vec4<u32>(5642u, 9812u, global1.c.c, global1.c.e)), 28276u, arg_0.c.c, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.c, u_input.a.x), arg_2.xz))).a)), -1000f);
    var var_3 = ~arg_2.x;
    global1 = Struct_2(~(max(select(vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(false, true)), vec2<u32>(arg_2.x, u_input.a.x)) | vec2<u32>(func_2(arg_1.e, -521f, vec4<u32>(22961u, global1.a.x, u_input.a.x, var_0)).e, global1.a.x ^ u_input.a.x)), -1i, arg_0.c, (arg_0.d & true) | true);
    return arg_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(u_input.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.b, global1.b, u_input.b.x << (global1.a.x % 32u)), vec3<i32>(-2147483647i << (global1.c.c % 32u), -global1.b, -u_input.b.x), -(u_input.b ^ u_input.b)), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4397u, 52214u), vec2<u32>(1u, 19053u)), 5u)], all(select(global1.c.d, vec2<bool>(global1.d, false), global0[_wgslsmith_index_u32(64972u, 5u)])), !(!global1.d))), select(abs(~u_input.b), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(0i, -1i)), _wgslsmith_sub_i32(u_input.b.x >> (global1.c.e % 32u), func_1(Struct_2(vec2<u32>(u_input.a.x, u_input.c), -1i, Struct_1(-926f, global1.c.a, 4294967295u, vec2<bool>(true, false), u_input.a.x), global2.x), Struct_4(u_input.b.yx, Struct_1(global1.c.a, 312f, global1.a.x, global2.yz, global1.c.e), global0[_wgslsmith_index_u32(16735u, 5u)], vec3<i32>(global1.b, global1.b, 18750i), Struct_2(u_input.a, global1.b, Struct_1(672f, global1.c.a, 67677u, global1.c.d, 4294967295u), global2.x)), vec3<u32>(global1.a.x, global1.c.e, 9870u)))), (true & global2.x) & all(global1.c.d)), select(!(!(!vec3<bool>(true, global2.x, false))), select(!vec3<bool>(global0[_wgslsmith_index_u32(global1.c.e, 5u)], global2.x, global1.d), vec3<bool>(global2.x, all(vec4<bool>(true, global2.x, global2.x, false)), global1.d), global2.x), !(!vec3<bool>(global1.d, false, global2.x))));
    global0 = array<bool, 5>();
    var var_1 = Struct_4(u_input.b.zy & abs(_wgslsmith_add_vec2_i32(u_input.b.xz, ~var_0.zy)), global1.c, true, abs(~(u_input.b & vec3<i32>(19691i, -2147483647i, 33040i))), Struct_2(~u_input.a, 1i, Struct_1(global1.c.b, global1.c.b, 53855u, func_2(Struct_2(vec2<u32>(global1.a.x, global1.a.x), -25709i, global1.c, global2.x), -191f, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, 0u, 42102u), vec4<u32>(21685u, global1.c.e, 77084u, 23814u))).d, _wgslsmith_add_u32(u_input.c, u_input.c)), all(func_2(Struct_2(global1.a, var_0.x, global1.c, global0[_wgslsmith_index_u32(4294967295u, 5u)]), global1.c.b, vec4<u32>(u_input.c, 1u, 58138u, 4294967295u) << (vec4<u32>(60383u, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u))).d)));
    global1 = var_1.e;
    var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(47085i, -1i), min(var_0.x, u_input.b.x)), u_input.b.yz), min(-vec2<i32>(52436i, global1.b), vec2<i32>(-54095i, -1i))), ~_wgslsmith_sub_i32(select(1i, u_input.b.x, all(vec4<bool>(false, var_1.b.d.x, global2.x, global0[_wgslsmith_index_u32(var_1.e.a.x, 5u)]))), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, var_0.x, u_input.b.x, u_input.b.x) | vec4<i32>(41249i, -2147483647i, 1i, 6385i), vec4<i32>(-26948i, -2147483647i, 20334i, -62564i))), max(firstTrailingBit(abs(~26979i)), func_1(var_1.e, Struct_4(vec2<i32>(-2147483647i, 11533i), Struct_1(-544f, global1.c.a, u_input.c, global1.c.d, u_input.a.x), func_2(var_1.e, 572f, vec4<u32>(u_input.a.x, var_1.e.c.e, 34948u, 0u)).d.x, var_1.d, Struct_2(u_input.a, var_1.e.b, var_1.e.c, var_1.b.d.x)), ~countOneBits(vec3<u32>(47442u, var_1.e.a.x, var_1.e.a.x)))));
    var_1 = Struct_4(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~(~var_1.d.xy), var_0.yy), -var_0.zy), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1491f) * var_1.e.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a))), -556f, ~22527u, !select(!global2.yx, vec2<bool>(false, false), !global1.c.d), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c.a)) + 1136f)) > global1.c.b, ~var_1.d, var_1.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1068f, _wgslsmith_f_op_f32(func_3(vec4<bool>(global0[_wgslsmith_index_u32(global1.a.x, 5u)], true, true, true), vec2<bool>(true, global2.x), vec3<bool>(global2.x, global1.d, false), var_0.x)), _wgslsmith_f_op_f32(435f - 246f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(475f, var_1.b.b, global1.c.b), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.b, -1795f, 666f), vec3<f32>(568f, -1440f, 329f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.e.c.b, var_1.b.a, -758f), vec3<f32>(-1144f, var_1.e.c.b, var_1.b.b)) + vec3<f32>(1755f, -1334f, -128f))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2415f, 322f, 1243f) + vec3<f32>(164f, 138f, var_1.e.c.a))), vec3<f32>(_wgslsmith_div_f32(global1.c.b, global1.c.a), _wgslsmith_f_op_f32(min(var_1.e.c.b, 158f)), _wgslsmith_f_op_f32(-global1.c.a)), true)))));
    let var_3 = _wgslsmith_add_i32(func_1(Struct_2(_wgslsmith_clamp_vec2_u32(global1.a, vec2<u32>(var_1.b.c, global1.c.e), ~vec2<u32>(global1.c.c, var_1.e.a.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(30676i, 1474i, 2147483647i), vec3<i32>(0i, u_input.b.x, var_1.d.x)), var_0.x), Struct_1(_wgslsmith_div_f32(var_2.x, -1345f), _wgslsmith_f_op_f32(abs(var_2.x)), ~0u, func_2(var_1.e, 962f, vec4<u32>(var_1.b.e, 0u, global1.a.x, 27239u)).d, u_input.a.x), global0[_wgslsmith_index_u32(46122u, 5u)]), Struct_4(firstTrailingBit(var_0.xz) >> (vec2<u32>(11657u, u_input.a.x) % vec2<u32>(32u)), func_2(var_1.e, _wgslsmith_f_op_f32(ceil(-318f)), vec4<u32>(global1.c.e, 43185u, var_1.e.c.e, 1u)), false, min(_wgslsmith_clamp_vec3_i32(var_1.d, vec3<i32>(-2147483647i, -22119i, 0i), var_1.d), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.b.x, global1.b), var_1.d)), var_1.e), vec3<u32>(4481u, u_input.a.x, 12171u)), 52030i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(~1u, u_input.a.x >> (~34421u % 32u)), _wgslsmith_div_u32(var_1.b.c, 1u), ~(~1u), _wgslsmith_div_u32(reverseBits(~0u), 33622u ^ countOneBits(var_1.e.a.x))), ~vec4<u32>(1u, var_1.e.c.c, countOneBits(func_2(var_1.e, 341f, vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1329u)).c), var_1.b.c));
}

