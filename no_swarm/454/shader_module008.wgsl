struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1071f, -1861f, 204f);

var<private> global1: array<f32, 19>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> u32 {
    let var_0 = global2.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1574f - _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 19u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * global0.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + global1[_wgslsmith_index_u32(4294967295u, 19u)])))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 19u)] * global0.x))) + -1334f))));
    global2 = Struct_1(select(select(vec3<bool>(global2.a.x, !global3.a.x, any(vec4<bool>(true, global4.a.x, false, global3.a.x))), global2.a, true), select(!select(global4.a, vec3<bool>(true, false, true), global3.a.x), vec3<bool>(global2.a.x, true, all(vec2<bool>(false, global2.a.x))), global4.a.x), !global2.a));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1866f, 435f)), _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), -1889f);
    return _wgslsmith_clamp_u32(u_input.b.x, 1u, max(~u_input.b.x, ~u_input.b.x));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, 1u), func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-21542i, 61305i, 46985i, 3518i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (arg_0 % vec4<u32>(32u))), ~vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x)) << (_wgslsmith_dot_vec3_u32(~arg_0.xwz, _wgslsmith_mult_vec3_u32(arg_0.yyw, abs(arg_0.yyw))) % 32u));
    global2 = Struct_1(!select(vec3<bool>(global2.a.x, false, true), select(global3.a, global2.a, true), false));
    var var_1 = ~(~(~vec2<u32>(u_input.b.x, 32283u))) ^ u_input.b.yy;
    var_1 = u_input.b.yz;
    var var_2 = Struct_1(vec3<bool>(global3.a.x, false, global3.a.x));
    return global4.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_1(!global3.a);
    var var_1 = Struct_1(select(var_0.a, func_2(vec4<u32>(4294967295u, 4897u, u_input.b.x, u_input.b.x) & vec4<u32>(u_input.b.x, 45588u, u_input.b.x, u_input.b.x)), any(vec4<bool>(false, true, false, true))));
    var var_2 = Struct_1(global3.a);
    global4 = Struct_1(select(var_0.a, vec3<bool>(false, true, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 19u)], 1000f) < _wgslsmith_div_f32(arg_1, global1[_wgslsmith_index_u32(0u, 19u)])), var_1.a));
    var var_3 = vec2<u32>(_wgslsmith_add_u32(u_input.b.x, 1u), 60142u);
    return (firstLeadingBit(vec4<u32>(u_input.b.x & u_input.b.x, ~var_3.x, 0u, var_3.x)) >> (~(~(~vec4<u32>(2972u, var_3.x, 33727u, 42633u))) % vec4<u32>(32u))) >> ((((~vec4<u32>(17037u, u_input.b.x, 4294967295u, 1u) << (vec4<u32>(1u, 4294967295u, 4294967295u, var_3.x) % vec4<u32>(32u))) | vec4<u32>(4294967295u, u_input.b.x, ~u_input.b.x, reverseBits(51629u))) & (vec4<u32>(var_3.x, 7403u & var_3.x, 1u, u_input.b.x) >> (vec4<u32>(48072u, ~u_input.b.x, _wgslsmith_div_u32(u_input.b.x, var_3.x), u_input.b.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(abs(~37608u), u_input.b.x, 0u, ~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 4294967295u)), ~func_1(vec4<f32>(-1197f, global0.x, 370f, 978f), global0.x), global3.a.x | func_2(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)).x), vec4<u32>(~(_wgslsmith_mult_u32(4731u, u_input.b.x) | ~1u), u_input.b.x, u_input.b.x, _wgslsmith_dot_vec4_u32(~func_1(vec4<f32>(global0.x, -153f, 149f, global0.x), -106f), countOneBits(vec4<u32>(81199u, u_input.b.x, u_input.b.x, 1u)))));
    global1 = array<f32, 19>();
    var var_1 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b.x, countOneBits(u_input.b.x), 1u, ~u_input.b.x), vec4<u32>(var_0.x, var_0.x, 1u, u_input.b.x) << ((vec4<u32>(4294967295u, var_0.x, var_0.x, 1u) | vec4<u32>(u_input.b.x, u_input.b.x, 95318u, 83919u)) % vec4<u32>(32u)))) & ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, 114651u, u_input.b.x) ^ vec4<u32>(var_0.x, 4294967295u, 53642u, 1u), ~vec4<u32>(1u, 1u, var_0.x, u_input.b.x), vec4<u32>(1u, var_0.x, 57819u, 23922u) << (vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u) % vec4<u32>(32u))) | vec4<u32>(31015u, ~47977u, 4294967295u, var_0.x));
    var var_2 = firstLeadingBit(abs(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(~u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(3759u, 9113u, 4294967295u, 4294967295u), vec4<u32>(var_0.x, var_1.x, var_1.x, var_1.x)) % 32u), u_input.a ^ u_input.a, 6804i << (var_0.x % 32u))), ~vec4<u32>(_wgslsmith_div_u32(~3316u, _wgslsmith_div_u32(0u, var_0.x)), 0u, select(u_input.b.x ^ 38969u, 4294967295u, true), var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-110f)), 777f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -921f) - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, var_1.x), 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-419f))), global1[_wgslsmith_index_u32(~(~4294967295u), 19u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1218f)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 19u)])));
}

