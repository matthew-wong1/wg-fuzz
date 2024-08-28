struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: bool;

var<private> global2: i32 = 25361i;

var<private> global3: Struct_3 = Struct_3(vec4<u32>(0u, 1u, 4294967295u, 66313u), vec3<u32>(1u, 30807u, 12598u), vec2<u32>(13274u, 0u), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<i32>(15611i, -1935i, 2147483647i, -1i))), vec3<f32>(-666f, 1555f, -1000f));

var<private> global4: array<i32, 5>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = vec4<bool>(true, global3.d.a.a.x, global3.d.a.a.x, (global3.e.x != _wgslsmith_f_op_f32(758f * _wgslsmith_div_f32(962f, -1224f))) & global0.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(230f)), _wgslsmith_f_op_f32(-global3.e.x), global3.e.x, _wgslsmith_f_op_f32(global3.e.x - global3.e.x)), vec4<f32>(340f, _wgslsmith_f_op_f32(sign(global3.e.x)), _wgslsmith_f_op_f32(1000f + 263f), _wgslsmith_f_op_f32(-209f + global3.e.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.e.x, global3.e.x, 148f, 454f))) * vec4<f32>(global3.e.x, global3.e.x, global3.e.x, global3.e.x)) + vec4<f32>(global3.e.x, global3.e.x, 1982f, _wgslsmith_f_op_f32(-global3.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1504f, 138f))) >= 1049f)));
    let var_1 = ~min(~global3.a, global3.a);
    global2 = global4[_wgslsmith_index_u32(27494u, 5u)];
    var var_2 = arg_0.a;
    return ~(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(global3.a, global3.a)) ^ 1u);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = !vec4<bool>(true, true, arg_1.d.a.a.x, true);
    let var_1 = global3.b;
    let var_2 = -(~global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(firstLeadingBit(arg_2), ~arg_1.b.x)), 5u)]);
    var var_3 = _wgslsmith_sub_i32((~2147483647i ^ global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, 0u), 5u)]) << (~func_3(arg_3.d) % 32u), ~(~_wgslsmith_div_i32(arg_1.d.a.b.x, u_input.b))) >> (1u % 32u);
    global3 = Struct_3(reverseBits(abs(~vec4<u32>(84939u, var_1.x, 4294967295u, arg_3.a.x)) >> (((vec4<u32>(801u, 1u, var_1.x, 14508u) & arg_3.a) >> (vec4<u32>(arg_1.a.x, 21079u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec3<u32>(18389u, 135991u, var_1.x), ~select(_wgslsmith_add_vec2_u32(select(vec2<u32>(26178u, 33160u), global3.c, vec2<bool>(var_0.x, arg_1.d.a.a.x)), vec2<u32>(arg_3.c.x, arg_0.x)), ~(vec2<u32>(0u, arg_2) >> (arg_0.yz % vec2<u32>(32u))), var_0.x), Struct_2(Struct_1(select(!vec3<bool>(arg_3.d.a.a.x, false, global0.x), select(arg_1.d.a.a, vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true), vec4<i32>(reverseBits(var_2), arg_1.d.a.b.x, arg_1.d.a.b.x, firstTrailingBit(arg_3.d.a.b.x)))), vec3<f32>(global3.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(340f * arg_1.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.e.x + global3.e.x))))), _wgslsmith_f_op_f32(f32(-1f) * -142f)));
    return select(select(global0.yz, arg_3.d.a.a.zz, !select(arg_1.d.a.a.yx, vec2<bool>(true, true), select(arg_3.d.a.a.xy, global0.xy, arg_1.d.a.a.yz))), var_0.yz, vec2<bool>(false, any(select(arg_1.d.a.a.zy, select(arg_3.d.a.a.yz, vec2<bool>(true, true), false), var_0.zz))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<f32>) -> Struct_1 {
    global1 = !arg_1.x;
    global4 = array<i32, 5>();
    var var_0 = _wgslsmith_mod_vec2_i32(global3.d.a.b.zx, -global3.d.a.b.zz);
    global2 = u_input.b;
    global3 = Struct_3(~select(global3.a, vec4<u32>(~arg_0.x, _wgslsmith_sub_u32(arg_0.x, 1u), _wgslsmith_dot_vec2_u32(global3.b.xz, global3.c), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, 1u, arg_0.x), vec4<u32>(global3.c.x, 100834u, 21661u, 1090u))), true), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 1u & ~arg_0.x, global3.c.x), global3.a.yxx), reverseBits(~(_wgslsmith_sub_vec2_u32(arg_0, arg_0) ^ (vec2<u32>(arg_0.x, 0u) >> (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))))), Struct_2(Struct_1(global0.yyy, _wgslsmith_mod_vec4_i32(global3.d.a.b, global3.d.a.b))), _wgslsmith_f_op_vec3_f32(-global3.e));
    return Struct_1(global0.zzz, -_wgslsmith_clamp_vec4_i32(global3.d.a.b, -_wgslsmith_mult_vec4_i32(vec4<i32>(global3.d.a.b.x, var_0.x, 1i, 39648i), global3.d.a.b), _wgslsmith_div_vec4_i32(~vec4<i32>(19140i, 0i, global3.d.a.b.x, var_0.x), -vec4<i32>(u_input.d, 0i, -2147483647i, 5953i))));
}

fn func_1() -> u32 {
    let var_0 = func_4(~vec2<u32>(~_wgslsmith_mod_u32(41835u, 19851u), 73237u & global3.b.x), select(select(global3.d.a.a.yx, !vec2<bool>(global0.x, false), func_2(vec3<u32>(global3.b.x, 50233u, global3.c.x), Struct_3(global3.a, global3.b, vec2<u32>(4294967295u, global3.a.x), global3.d, global3.e), global3.b.x, Struct_3(vec4<u32>(15504u, global3.b.x, 0u, 0u), vec3<u32>(global3.b.x, 0u, global3.a.x), global3.c, Struct_2(global3.d.a), global3.e))), !select(func_2(global3.b, Struct_3(vec4<u32>(1u, 4294967295u, global3.b.x, global3.a.x), vec3<u32>(global3.a.x, 38372u, 7472u), vec2<u32>(2923u, global3.c.x), global3.d, global3.e), global3.a.x, Struct_3(global3.a, vec3<u32>(1u, 43582u, global3.a.x), vec2<u32>(global3.b.x, global3.b.x), global3.d, global3.e)), vec2<bool>(true, global0.x), true), true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global3.e.xy, global3.e.xx), vec2<f32>(global3.e.x, 1308f))) * vec2<f32>(_wgslsmith_f_op_f32(round(724f)), global3.e.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global3.e.yy, global3.e.yz))))))));
    global4 = array<i32, 5>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(986f, 595f, -813f, 1568f), vec4<f32>(1000f, 2318f, 778f, -1420f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.e.x, global3.e.x, 366f, global3.e.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.e.x, -146f, 608f, global3.e.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(990f * -1063f), global3.e.x, global3.e.x, _wgslsmith_f_op_f32(-1709f + global3.e.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(643f, -743f, 1131f, global3.e.x) * vec4<f32>(-1398f, global3.e.x, global3.e.x, 1802f)))))));
    var var_2 = Struct_2(global3.d.a);
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_add_u32(~20622u, global3.a.x), global3.b.x)), 4294967295u >> (~global3.c.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global4[_wgslsmith_index_u32(~1u, 5u)];
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-abs(select(-vec2<i32>(1i, -7021i), vec2<i32>(u_input.e, global4[_wgslsmith_index_u32(global3.c.x, 5u)]), !global0.xy)), ~var_0, -630f, ~(~vec3<i32>(global4[_wgslsmith_index_u32(var_0, 5u)], _wgslsmith_mult_i32(u_input.d, global3.d.a.b.x), -12345i)), vec4<u32>(~global3.c.x, var_0, countOneBits(~max(var_0, var_0)), ~(~_wgslsmith_sub_u32(var_0, global3.c.x))));
}

