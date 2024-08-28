struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec4<i32>(3784i, -1i, 1i, -5188i), -54224i), Struct_3(vec4<i32>(i32(-2147483648), 2724i, 7366i, 0i), -1i), Struct_3(vec4<i32>(i32(-2147483648), 0i, -32451i, -1i), 2147483647i), Struct_3(vec4<i32>(30624i, -2776i, i32(-2147483648), -4930i), -48892i), Struct_3(vec4<i32>(i32(-2147483648), -812i, 4474i, 16238i), 2147483647i), Struct_3(vec4<i32>(13494i, i32(-2147483648), 6571i, 2147483647i), -1i), Struct_3(vec4<i32>(4997i, -34595i, 1i, 0i), -15874i), Struct_3(vec4<i32>(-14998i, -27944i, 51158i, 2147483647i), 28862i), Struct_3(vec4<i32>(0i, i32(-2147483648), -1i, 0i), -1777i), Struct_3(vec4<i32>(2147483647i, 1i, 2147483647i, 1764i), i32(-2147483648)), Struct_3(vec4<i32>(5334i, -27410i, -63510i, -19317i), 2147483647i), Struct_3(vec4<i32>(-87310i, -19795i, 0i, 2147483647i), -1i), Struct_3(vec4<i32>(-1i, -1i, 44962i, 0i), -1i), Struct_3(vec4<i32>(-34728i, 60095i, 0i, -5095i), -15135i), Struct_3(vec4<i32>(-16066i, 27679i, 4830i, 2147483647i), 0i), Struct_3(vec4<i32>(1i, 2147483647i, -1i, 23814i), 0i), Struct_3(vec4<i32>(53075i, -38486i, 1i, 0i), 0i), Struct_3(vec4<i32>(2147483647i, -1i, 729i, 2147483647i), 1i), Struct_3(vec4<i32>(0i, -24422i, -32007i, 0i), 28120i), Struct_3(vec4<i32>(2147483647i, 2147483647i, 1i, -1445i), 11457i), Struct_3(vec4<i32>(-1i, 14375i, 1i, 19519i), 1i), Struct_3(vec4<i32>(-1i, 0i, -299i, i32(-2147483648)), 695i));

var<private> global2: array<u32, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec3<bool> {
    return vec3<bool>((true && (true | any(vec4<bool>(true, true, false, false)))) || true, true, any(vec3<bool>(all(vec3<bool>(true, true, true)), true, true)));
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    var var_0 = any(select(!func_3(), vec3<bool>(false, false, true), vec3<bool>(true, true, true)));
    let var_1 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(18556u, firstTrailingBit(min(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30392u, 24u)], 24u)]))), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(39941u, 24u)], ~(~35438u)), true) | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)];
    let var_2 = Struct_2(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(~u_input.a, u_input.a), -3691i, 2147483647i), -vec3<i32>(0i, abs(u_input.a >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31913u, 24u)], 24u)], 24u)] % 32u)), _wgslsmith_sub_i32(-arg_0.x, _wgslsmith_add_i32(2147483647i, -22735i))));
    var var_3 = 2586f;
    let var_4 = false;
    return vec3<u32>(37332u, 82093u, ~(~(~1u)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15152u, 24u)], 24u)];
    global0 = 0i;
    var var_1 = Struct_1(func_2(vec4<i32>(arg_2.b, ~1i, ~arg_3.b.x, -24277i)) & select(vec3<u32>(1u, 4294967295u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 14702u), ~(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39700u, 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5243u, 24u)], 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]) | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27555u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(17806u, 24u)], 0u)), true), arg_0, !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0, true, false, true), false), !vec4<bool>(true, true, true, arg_0), true)), (-2147483647i <= u_input.a) | arg_0);
    var var_2 = vec3<bool>(var_1.d, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_2.a << (vec4<u32>(8374u, global2[_wgslsmith_index_u32(var_1.a.x, 24u)], 1u, 0u) % vec4<u32>(32u)), abs(arg_2.a)), -vec4<i32>(-2147483647i, arg_1.x, arg_2.b, -1i)) <= -2147483647i, var_1.c.x && true);
    let var_3 = ~(~(~_wgslsmith_mod_u32(0u, 4294967295u)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 503f, -1160f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_div_f32(-432f, 1528f), _wgslsmith_f_op_f32(sign(-506f))), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1349f, 696f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-563f * 1075f) - _wgslsmith_f_op_f32(round(-237f))), _wgslsmith_f_op_f32(min(-263f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), select(var_1.c.yyw, select(var_1.c.wyx, !func_3(), false), false)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec3<i32> {
    global1 = array<Struct_3, 22>();
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_div_f32(arg_2.x, 136f)) - arg_2.x), _wgslsmith_f_op_f32(min(2352f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -826f)))))), -1946f);
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 22u)];
    var_1 = Struct_3(vec4<i32>(~_wgslsmith_div_i32(-12765i, 9627i), _wgslsmith_sub_i32(firstTrailingBit(var_1.b), 0i), min(select(13002i, _wgslsmith_add_i32(-2147483647i, 13885i), false), 1i), 1i), var_1.b);
    return min(vec3<i32>(min(select(1i, arg_1.x, false) ^ u_input.a, _wgslsmith_clamp_i32(~u_input.a, var_1.b >> (arg_0.x % 32u), var_1.a.x)), abs(-8225i) | arg_1.x, 0i), _wgslsmith_div_vec3_i32(~reverseBits(vec3<i32>(2147483647i, -32723i, -2147483647i)), arg_1.xwy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i) * -(vec3<i32>(-1i, -10304i, -1i) & (-vec3<i32>(-41077i, 0i, 0i) >> (~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40448u, 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(47219u, 24u)]) % vec3<u32>(32u))));
    global1 = array<Struct_3, 22>();
    var_0 = _wgslsmith_mult_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.a, 1i, -5936i)) >> (~(~(vec3<u32>(global2[_wgslsmith_index_u32(66086u, 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 0u) ^ vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12142u, 24u)], 24u)], 30570u))) % vec3<u32>(32u)), -func_4(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)], 0u, global2[_wgslsmith_index_u32(48477u, 24u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.a, var_0.x), vec4<i32>(41421i, 44372i, -44602i, u_input.a), vec4<i32>(2147483647i, -56297i, -10891i, var_0.x)), _wgslsmith_f_op_vec3_f32(func_1(true, vec2<i32>(-1i, 23557i), Struct_3(vec4<i32>(u_input.a, 5087i, 2147483647i, -29448i), u_input.a), Struct_2(var_0.x, vec3<i32>(u_input.a, 2147483647i, 1i))))) ^ vec3<i32>(var_0.x, -22521i >> (~global2[_wgslsmith_index_u32(46780u, 24u)] % 32u), 1i | ~var_0.x));
    let var_1 = global1[_wgslsmith_index_u32(5700u, 22u)];
    var var_2 = Struct_1(countOneBits(abs(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], 1u))), true, select(select(vec4<bool>(false, true, select(true, false, true), any(vec3<bool>(false, true, true))), vec4<bool>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)] == 94216u, any(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)), true), !select(true, true, true)), select(vec4<bool>(true, all(vec2<bool>(false, true)), true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), false, all(vec3<bool>(true, false, true)), false), vec4<bool>(true, true, true, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(-var_1.a.xyx), ~u_input.a, global2[_wgslsmith_index_u32(var_2.a.x, 24u)], countOneBits(81799i));
}

