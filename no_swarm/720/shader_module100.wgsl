struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 5>;

var<private> global3: array<i32, 17> = array<i32, 17>(2147483647i, i32(-2147483648), -8711i, 10083i, 7894i, 2147483647i, 0i, 2147483647i, -49783i, 37397i, -21273i, 20i, 0i, -36864i, 2147483647i, i32(-2147483648), 10929i);

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: i32) -> Struct_5 {
    let var_0 = Struct_1(true, 1334f, _wgslsmith_sub_u32(firstTrailingBit(~(~19199u)), 0u));
    let var_1 = _wgslsmith_clamp_i32(countOneBits(i32(-1i) * -26548i) ^ u_input.b.x, abs(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-4361i, -2147483647i, global0.x, 17639i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, arg_0, 0i) | vec4<i32>(u_input.b.x, global0.x, global0.x, 4348i), vec4<i32>(arg_0, global0.x, arg_0, u_input.b.x)))), 50439i);
    global3 = array<i32, 17>();
    let var_2 = reverseBits(u_input.b.zy) ^ vec2<i32>(-u_input.b.x, _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(global0.x, 3282i)));
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), -455f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b - var_0.b), -1059f, _wgslsmith_f_op_f32(max(-532f, -912f))) * vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + _wgslsmith_f_op_f32(f32(-1f) * -171f)), var_0.b)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), arg_2, _wgslsmith_f_op_f32(ceil(arg_2))))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, -2582f, arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - -1727f))))), Struct_4(var_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-678f, var_0.b, -803f) - var_3.c))), var_3.b), _wgslsmith_f_op_f32(f32(-1f) * -972f), u_input.b);
}

fn func_3() -> vec2<u32> {
    var var_0 = ~abs(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(1u, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-352f, 942f, 162f))) * func_2(max(36039i, -52645i), ~u_input.a, _wgslsmith_f_op_f32(2057f + -260f), ~(-18838i)).b.c), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(func_2(-2147483647i, 4294967295u, 1000f, 1430i).a.x, _wgslsmith_f_op_f32(floor(-896f)), _wgslsmith_f_op_f32(abs(-1245f))))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1786f - -1116f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1249f, -795f, false)), -1000f), 287f)))));
    let var_2 = select(select(!vec3<bool>(true, select(false, false, true), any(vec2<bool>(true, true))), vec3<bool>(true & (4294967295u <= u_input.a), all(vec3<bool>(true, true, true)), (i32(-1i) * -25759i) <= global0.x), select(false, true & any(vec4<bool>(true, true, false, true)), !(var_1.x <= -1451f))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), all(vec4<bool>(false, false, false, false))), true);
    let var_3 = _wgslsmith_mod_i32(-70480i, global0.x) ^ 47589i;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(265f, var_1.x)), var_1.x) - var_1.zy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(224f, var_1.x), var_1.yy))));
    return vec2<u32>(~(~1u), 0u);
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = func_2(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 4294967295u), reverseBits(vec2<u32>(~0u, _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-arg_0), -(~(global3[_wgslsmith_index_u32(u_input.a, 17u)] >> (u_input.a % 32u))) & -_wgslsmith_div_i32(u_input.b.x >> (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 63554i, global3[_wgslsmith_index_u32(0u, 17u)]))));
    let var_1 = var_0.b;
    let var_2 = var_0.d.x | max(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(13151u, 0u)), func_3()), 17u)], global0.x);
    let var_3 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(select(vec4<u32>(163u, u_input.a, 12949u, u_input.a), global2[_wgslsmith_index_u32(1652u, 5u)] & vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), vec4<bool>(true, true, true, true)), select(global2[_wgslsmith_index_u32(~1u, 5u)], global2[_wgslsmith_index_u32(u_input.a, 5u)], select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)))), global2[_wgslsmith_index_u32(4294967295u, 5u)]);
    global3 = array<i32, 17>();
    return ~(~vec2<u32>(_wgslsmith_div_u32(u_input.a, 98132u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 17>();
    var var_0 = abs(~(~_wgslsmith_mult_vec2_u32(func_1(1762f), vec2<u32>(0u, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(453f * 306f), 1058f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1286f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(758f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yy + vec2<f32>(var_1.x, 445f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1000f) - vec2<f32>(-1089f, var_1.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2278f, var_1.x)), var_1.zz)))));
}

