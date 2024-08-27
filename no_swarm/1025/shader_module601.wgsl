struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: Struct_3 = Struct_3(true, Struct_1(-507f, vec2<i32>(0i, 1i), vec3<u32>(76348u, 4294967295u, 4029u)));

var<private> global2: f32 = 2947f;

var<private> global3: array<bool, 1>;

var<private> global4: array<vec4<u32>, 17>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<i32>) -> vec3<i32> {
    global4 = array<vec4<u32>, 17>();
    return -vec3<i32>(-2147483647i, -16162i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1224i, global1.b.b.x, global1.b.b.x)), ~vec3<i32>(global1.b.b.x, 2147483647i, global1.b.b.x)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.b.a - -1023f), vec2<i32>(arg_0.b.b.x, ~(-2147483647i << (_wgslsmith_dot_vec2_u32(arg_0.b.c.xy, global1.b.c.xz) % 32u))), global1.b.c);
    return -26867i;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<u32>) -> i32 {
    global1 = Struct_3(-16145i > _wgslsmith_dot_vec3_i32(-func_2(vec4<i32>(arg_1.b.x, arg_2.b.b.x, -1i, 3996i)), vec3<i32>(func_3(arg_2), select(arg_1.b.x, global1.b.b.x, arg_2.a), -global1.b.b.x)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(796f, global1.b.a))), reverseBits(-vec2<i32>(global1.b.b.x, global1.b.b.x) | vec2<i32>(global1.b.b.x, arg_2.b.b.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(global1.b.c ^ arg_1.c, arg_2.b.c), ~arg_3.x, abs(u_input.a))));
    let var_0 = select(!(!vec4<bool>(!arg_2.a, false & global1.a, any(vec2<bool>(false, true)), any(vec2<bool>(true, false)))), select(vec4<bool>(!global3[_wgslsmith_index_u32(~16416u, 1u)], global3[_wgslsmith_index_u32(0u, 1u)], true, false), !(!(!vec4<bool>(true, global1.a, global3[_wgslsmith_index_u32(arg_1.c.x, 1u)], global1.a))), vec4<bool>(1268f <= _wgslsmith_f_op_f32(exp2(global1.b.a)), !(355f > arg_1.a), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_2.b.a) == 1000f)), true);
    var var_1 = !(!vec4<bool>(any(select(var_0.xww, var_0.yyy, var_0.x)), global3[_wgslsmith_index_u32(global1.b.c.x, 1u)], true, select(true, !arg_2.a, false)));
    global3 = array<bool, 1>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-833f - _wgslsmith_f_op_f32(min(1694f, -957f))) * arg_1.a);
    return _wgslsmith_dot_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(global1.b.b >> (arg_3.wy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(global1.b.b, global1.b.b)), arg_1.b.x, 0i, -21741i)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-52410i, ~arg_1.b.x, 2147483647i, countOneBits(arg_1.b.x))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-33947i, arg_2.b.b.x, global1.b.b.x, global1.b.b.x), vec4<i32>(-7897i, 1i, global1.b.b.x, countOneBits(-18783i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-139i, _wgslsmith_div_i32(func_1(vec2<f32>(global1.b.a, global1.b.a), global1.b, Struct_3(global3[_wgslsmith_index_u32(37116u, 1u)], Struct_1(global1.b.a, vec2<i32>(global1.b.b.x, global1.b.b.x), global1.b.c)), global4[_wgslsmith_index_u32(1u, 17u)]) << (abs(19260u) % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.b.b.x, global1.b.b.x, -27734i, -2747i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.b.x, -1i, 73793i, 10659i), vec4<i32>(global1.b.b.x, global1.b.b.x, global1.b.b.x, global1.b.b.x), vec4<i32>(-19222i, -18102i, 2147483647i, -2147483647i)))) | reverseBits(_wgslsmith_sub_i32(~1i, _wgslsmith_mod_i32(-11898i, global1.b.b.x))));
    var var_1 = _wgslsmith_div_u32(~reverseBits(~1u), global1.b.c.x);
    var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(abs(~(-2147483647i)), firstLeadingBit(~global1.b.b.x)), global1.b.b.x);
    global3 = array<bool, 1>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-643f, _wgslsmith_f_op_f32(round(global1.b.a)), _wgslsmith_f_op_f32(global1.b.a + global1.b.a)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.a, global1.b.a, 631f))))), all(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 1u)], false, true), vec3<bool>(global1.a, false, false), global3[_wgslsmith_index_u32(u_input.a, 1u)])))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-931f, global1.b.a, 193f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, global1.b.a, global1.b.a))))))));
    var var_3 = true;
    var var_4 = global3[_wgslsmith_index_u32(max(global1.b.c.x, reverseBits(abs(global1.b.c.x))), 1u)];
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * 1772f), 531f)), global1.b.a);
    let var_6 = Struct_3(true, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~global1.b.c.x, -reverseBits(vec4<i32>(firstTrailingBit(var_6.b.b.x), -var_6.b.b.x, global1.b.b.x | -6905i, var_6.b.b.x)));
}

