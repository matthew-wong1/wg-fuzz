struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

var<private> global1: Struct_3;

var<private> global2: vec2<f32> = vec2<f32>(529f, 1738f);

var<private> global3: Struct_2;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global3.a.x, -1364f) + _wgslsmith_f_op_vec3_f32(-global3.a)), _wgslsmith_f_op_vec3_f32(-global1.b.a), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))))), ~(-u_input.a), global3.c), Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global3.a, global1.a.c.a.zwx))), global3.c.a.wwy)), _wgslsmith_dot_vec4_i32(~vec4<i32>(26814i, -87680i, 23043i, -27950i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, global1.a.b, global3.b, 2147483647i), firstLeadingBit(vec4<i32>(u_input.a, u_input.d, global3.b, global1.b.b)))), global3.c), global1.b.b, Struct_1(vec4<f32>(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.d.a.x, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -746f), global1.a.c.a.x)), vec3<u32>(_wgslsmith_mult_u32(4294967295u, reverseBits(u_input.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_sub_u32(1u, global1.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 38984u, 18257u), vec4<u32>(88669u, 0u, 13022u, 1u)), global1.e.x), vec4<u32>(reverseBits(u_input.c.x), max(u_input.b, u_input.c.x), abs(4294967295u), 0u)), firstLeadingBit(~_wgslsmith_add_u32(global1.e.x, u_input.b))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(global1.d.a))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c.a) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -633f), 948f, _wgslsmith_f_op_f32(f32(-1f) * -188f), 626f)));
    let var_3 = _wgslsmith_f_op_f32(-global3.a.x);
    global1 = Struct_3(var_0.b, Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(var_2.a.yzz)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_1.x, 242f))), u_input.d, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(global3.c.a, vec4<f32>(global4.x, var_0.b.a.x, var_0.d.a.x, 1066f)))))), global1.b.b, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, 1297f, -465f, var_3), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, global4.x, 306f, var_3))), any(vec2<bool>(false, false))))))), vec3<u32>(reverseBits(98787u), min(~(~global1.e.x), 88718u), ~var_0.e.x));
    return abs(0i);
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1617f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.x + 1000f)))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1527f), -520f));
    global1 = Struct_3(Struct_2(vec3<f32>(645f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-733f, -808f), 355f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(1000f)))), select(~u_input.d, func_3(), true), global3.c), Struct_2(global1.a.a, 4773i, global1.a.c), global1.a.b, Struct_1(global1.d.a), countOneBits(u_input.c));
    var var_0 = global1.b.b;
    global2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(global4.x - -865f), -1422f)))));
    global3 = global1.b;
    return Struct_3(Struct_2(global3.c.a.wzy, global3.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global2.x * global4.x), global2.x, global3.c.a.x, _wgslsmith_f_op_f32(floor(global4.x))))), global1.a, select(_wgslsmith_sub_i32(4995i, min(global1.c, i32(-1i) * -4709i)), -37008i, all(vec2<bool>(true, true))), global1.a.c, ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, u_input.c.x) >> (u_input.c % vec3<u32>(32u)), vec3<u32>(global1.e.x, u_input.b, 4294967295u) >> (vec3<u32>(global1.e.x, u_input.c.x, 0u) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, 10417u, 46005u), global1.e, vec3<bool>(false, false, true))) >> (countOneBits(reverseBits(vec3<u32>(global1.e.x, u_input.b, global1.e.x))) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.a.x, -382f, global4.x)), vec3<f32>(global4.x, _wgslsmith_f_op_f32(floor(-2167f)), _wgslsmith_f_op_f32(global1.a.c.a.x + 635f))), _wgslsmith_f_op_vec3_f32(global1.b.c.a.zwz * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global3.a), global3.c.a.zzx, vec3<bool>(true, true, false))))));
    let var_0 = global0[_wgslsmith_index_u32(0u, 15u)];
    let var_1 = true;
    global1 = func_2(arg_0.c.a.xxw);
    var var_2 = all(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(global1.e.x), func_2(vec3<f32>(global2.x, arg_0.a.x, global3.a.x)).e.x), 15u)], vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(var_1, false), global0[_wgslsmith_index_u32(1u, 15u)])), true), select(global0[_wgslsmith_index_u32(global1.e.x, 15u)], global0[_wgslsmith_index_u32(global1.e.x, 15u)], select(!vec2<bool>(false, var_0.x), global0[_wgslsmith_index_u32(u_input.c.x, 15u)], var_1 & true))));
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1120f)))), _wgslsmith_f_op_f32(440f - _wgslsmith_f_op_f32(floor(global3.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f)), _wgslsmith_f_op_f32(1868f - global3.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(-546f, _wgslsmith_f_op_f32(-195f + 1317f));
    let var_0 = true;
    global1 = func_1(global1.b);
    let var_1 = -func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(step(1184f, global1.d.a.x)), _wgslsmith_div_f32(global1.d.a.x, 725f)))).c;
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c.a.x + global2.x)), global4.x)), var_1 & max(global1.c ^ firstTrailingBit(-5821i), func_1(func_1(global1.b).a).a.b), global3.c);
    let var_2 = vec2<i32>(-_wgslsmith_sub_i32(-42197i, func_3()), abs(-1i));
    let var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-688f, global2.x, global3.a.x)));
}

