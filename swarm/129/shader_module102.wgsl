struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: f32 = 461f;

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<Struct_1, 5>;

var<private> global4: array<f32, 17> = array<f32, 17>(-304f, -133f, 412f, 857f, -1076f, 676f, -1000f, -275f, 344f, 1308f, -962f, -640f, -1000f, 754f, 2136f, -262f, -340f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    global2 = array<Struct_2, 9>();
    var var_0 = Struct_2(Struct_1(arg_0.a, abs(arg_0.b ^ u_input.b.zy), arg_0.c), arg_0);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4[_wgslsmith_index_u32(15110u, 17u)], global4[_wgslsmith_index_u32(arg_1.x, 17u)], -746f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-503f, 1000f, 531f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4[_wgslsmith_index_u32(arg_1.x, 17u)], global4[_wgslsmith_index_u32(1u, 17u)], global4[_wgslsmith_index_u32(1u, 17u)]))))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(482f, global4[_wgslsmith_index_u32(0u, 17u)], 143f, -807f)) * vec4<f32>(var_1.x, global4[_wgslsmith_index_u32(34622u, 17u)], var_1.x, -277f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1156f, -1518f, global4[_wgslsmith_index_u32(arg_1.x, 17u)], var_1.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 561f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1488f, global4[_wgslsmith_index_u32(4294967295u, 17u)], var_1.x, global4[_wgslsmith_index_u32(0u, 17u)]), vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 17u)], var_1.x, global4[_wgslsmith_index_u32(arg_1.x, 17u)], 751f)))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_1.x, 17u)]), _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(6433u, 17u)])))))));
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(arg_1, vec2<u32>(1u, arg_1.x), vec2<bool>(false, var_0.b.a.x)), arg_1), arg_1.x), 61979u, arg_1.x);
    return max(_wgslsmith_add_i32(-_wgslsmith_sub_i32(firstLeadingBit(u_input.d.x), 1i), u_input.a), abs(~(~u_input.d.x)));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_mod_i32(i32(-1i) * -_wgslsmith_mod_i32(u_input.b.x, 1i), _wgslsmith_sub_i32(~func_3(global3[_wgslsmith_index_u32(firstTrailingBit(87625u), 5u)], ~vec2<u32>(0u, 1u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(5707i, u_input.e.x), u_input.e.zz) & u_input.e.x));
    global4 = array<f32, 17>();
    global4 = array<f32, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-631f, _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(54773u, 17u)])), 939f, _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(1u, 17u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(21662u, 17u)], global4[_wgslsmith_index_u32(84102u, 17u)], 1130f, global4[_wgslsmith_index_u32(4294967295u, 17u)])))))));
    global2 = array<Struct_2, 9>();
    return vec3<u32>(_wgslsmith_mult_u32(max(56178u, 4294967295u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 0u, 13088u)) >> (countOneBits(vec3<u32>(74484u, 1u, 4294967295u)) % vec3<u32>(32u)), reverseBits(select(vec3<u32>(0u, 0u, 22593u), vec3<u32>(25013u, 1u, 55518u), true)))), 4294967295u, 1u);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_3, 16>();
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(reverseBits(max(12433u, 1u)), 9u)], _wgslsmith_dot_vec3_u32(~func_2(), ~firstTrailingBit(reverseBits(vec3<u32>(1u, 2041u, 19148u)))));
    global0 = array<Struct_3, 16>();
    let var_1 = ~(~min(countOneBits(firstTrailingBit(vec2<i32>(-1i, 1i))), arg_2.b));
    let var_2 = var_0.b;
    return _wgslsmith_dot_vec3_u32(func_2(), _wgslsmith_add_vec3_u32(min(vec3<u32>(var_0.b, abs(67309u), 0u), vec3<u32>(~var_2, 1u, abs(0u))), vec3<u32>(countOneBits(func_2().x), reverseBits(var_2), firstTrailingBit(var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(vec2<bool>(all(vec3<bool>(true, true, true)), false), select(vec2<bool>(true, false), vec2<bool>(true, true), false), func_1(Struct_1(vec2<bool>(false, false), u_input.b.wz, true), 26033i, Struct_1(vec2<bool>(false, false), vec2<i32>(u_input.b.x, -1i), true)) == 70556u), vec2<bool>(true, _wgslsmith_div_i32(u_input.e.x, 6325i) >= -9715i), vec2<bool>(true, true)), -u_input.d, select(true, true, true));
    global4 = array<f32, 17>();
    let var_1 = var_0;
    var var_2 = var_0;
    var_2 = Struct_1(select(select(select(select(var_2.a, vec2<bool>(true, true), var_1.a.x), !vec2<bool>(true, var_1.a.x), var_0.a.x | var_1.a.x), var_0.a, true), !var_0.a, select(vec2<bool>(true, false), var_2.a, var_1.c)), vec2<i32>(countOneBits(2147483647i), max(_wgslsmith_clamp_i32(var_0.b.x, u_input.c, ~var_2.b.x), u_input.a)), select(!var_2.c, true && !all(vec2<bool>(true, false)), !(!any(var_0.a))));
    global1 = -407f;
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(9795u, 17u)], global4[_wgslsmith_index_u32(0u, 17u)])) * -2426f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 1000f, false))), _wgslsmith_div_f32(179f, _wgslsmith_f_op_f32(-970f + 1000f)), -1000f)));
}

