struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -18790i;

var<private> global1: array<Struct_2, 20>;

var<private> global2: Struct_4;

var<private> global3: array<vec3<bool>, 8>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = false;
    var var_1 = all(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), false), vec2<bool>(true, false)));
    var var_2 = global1[_wgslsmith_index_u32(u_input.c, 20u)];
    var_0 = !any(vec3<bool>(all(vec4<bool>(true, var_2.a.b, var_2.a.b, var_2.a.b)), true, var_2.a.b & true)) || false;
    let var_3 = var_2.b.zyx;
    return _wgslsmith_mult_u32(~_wgslsmith_div_u32(arg_0, 7807u), 0u);
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -913f);
    global2 = Struct_4(reverseBits(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global2.a.yzx, global2.a.zww), 36256u), ~abs(46335u), ~0u, func_3(~u_input.c, u_input.a, vec2<u32>(global2.a.x, 1u) << (global2.a.xy % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-200f, 321f, -1000f)))))), -2147483647i);
    let var_1 = ~vec4<i32>(19139i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-14763i, 2147483647i), -vec2<i32>(47937i, 27261i)), -2147483647i, _wgslsmith_clamp_i32(~global2.b, global2.b, global2.b)) | select(vec4<i32>(reverseBits(-global2.b), global2.b >> (73186u % 32u), global2.b >> (0u % 32u), global2.b), -(_wgslsmith_div_vec4_i32(vec4<i32>(global2.b, global2.b, global2.b, -2147483647i), vec4<i32>(global2.b, -1i, global2.b, 5360i)) ^ vec4<i32>(global2.b, global2.b, 0i, global2.b)), false);
    let var_2 = Struct_1(1u, all(global3[_wgslsmith_index_u32(global2.a.x, 8u)]) | true, _wgslsmith_add_u32(u_input.b, global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-768f - -926f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-979f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1466f, 894f))))));
    return Struct_4(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(global2.a, min(vec4<u32>(9343u, global2.a.x, global2.a.x, 16781u), vec4<u32>(var_2.a, 10123u, 4294967295u, var_2.c))), abs(global2.a)), -(~54912i));
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2();
    var var_1 = ~4294967295u;
    let var_2 = !select(select(vec3<bool>(u_input.b != u_input.a, any(vec2<bool>(false, true)), select(false, false, false)), !(!global3[_wgslsmith_index_u32(54559u, 8u)]), global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2.a.x), var_0.a.zw), 122688u), 8u)]), vec3<bool>(true, select(select(false, true, true), var_0.a.x == 0u, true), true), true);
    let var_3 = Struct_3(59258i, global2.a, i32(-1i) * -(~var_0.b), ~(~(~vec2<u32>(27996u, 16534u))), _wgslsmith_add_u32(5341u, global2.a.x));
    let var_4 = Struct_4((~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, var_0.a.x, 6972u), vec4<u32>(var_3.e, u_input.a, 4294967295u, 0u)) | vec4<u32>(_wgslsmith_dot_vec2_u32(var_3.d, vec2<u32>(0u, 0u)), firstLeadingBit(0u), global2.a.x, var_3.e | global2.a.x)) | ~func_2().a, max((global2.b | var_3.c) & _wgslsmith_mod_i32(-2211i, -2147483647i), ~_wgslsmith_div_i32(-1i, -1i)) & abs(global2.b));
    return reverseBits(max(vec4<i32>(-1i) * -(vec4<i32>(var_0.b, global2.b, -1i, -534i) << (global2.a % vec4<u32>(32u))), countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(8534i, global2.b, global2.b, var_4.b), vec4<i32>(76470i, -16783i, var_3.c, var_0.b), vec4<i32>(-2778i, 1i, 46920i, 378i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 20>();
    let var_0 = min(global2.a.zx, ~(~global2.a.xx));
    global3 = array<vec3<bool>, 8>();
    var var_1 = _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i & (global2.b & 1i), -53484i, ~firstTrailingBit(21798i), i32(-1i) * -1i), reverseBits(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(46234i, global2.b, -27666i, global2.b)), vec4<i32>(global2.b, 6000i, 33416i, global2.b)) ^ func_1()));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2313f - -1043f), 420f) - _wgslsmith_f_op_f32(step(-828f, 283f))), _wgslsmith_f_op_f32(sign(710f)))), _wgslsmith_f_op_f32(-1f), -267f, -155f);
    let var_3 = ~firstLeadingBit(vec2<u32>(var_0.x, 29687u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_3.x));
}

