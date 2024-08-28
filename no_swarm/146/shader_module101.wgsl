struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 16>;

var<private> global2: array<u32, 29> = array<u32, 29>(1u, 8498u, 16464u, 1u, 1u, 0u, 29057u, 1u, 4294967295u, 15349u, 19968u, 41089u, 0u, 4294967295u, 0u, 31757u, 0u, 2810u, 33236u, 4294967295u, 1u, 4294967295u, 0u, 4294967295u, 0u, 32297u, 23474u, 50410u, 4294967295u);

var<private> global3: array<f32, 4> = array<f32, 4>(-585f, 690f, 1000f, -1588f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> bool {
    let var_0 = global0.x;
    var var_1 = countOneBits(firstLeadingBit(u_input.c));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(733f + global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(49568u, 29u)], 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.c, 4u)], 268f)))) + global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 29u)], 4u)])));
    return !(_wgslsmith_f_op_f32(round(-318f)) > var_2.x);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<f32>) -> i32 {
    var var_0 = ~arg_2.a.b.x;
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    let var_1 = true;
    global1 = array<Struct_2, 16>();
    return 11137i ^ -firstTrailingBit((i32(-1i) * -88193i) ^ -arg_2.d.a);
}

fn func_2() -> bool {
    global1 = array<Struct_2, 16>();
    let var_0 = Struct_2(Struct_1(~(~abs(global0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(71056u, 4294967295u, 4294967295u) ^ vec3<u32>(u_input.b.x, 10761u, 36854u), vec3<u32>(4294967295u, ~4294967295u, global2[_wgslsmith_index_u32(1u, 29u)]), vec3<u32>(_wgslsmith_add_u32(41598u, u_input.c), u_input.b.x, 0u)), _wgslsmith_f_op_f32(min(-451f, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(reverseBits(u_input.c), 4u)]))))));
    let var_1 = true;
    let var_2 = abs(1u);
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(func_3(vec4<i32>(0i, global0.x, -33436i << (u_input.c % 32u), _wgslsmith_add_i32(var_0.a.a, -1i)), var_0.a, Struct_3(var_0.a, vec3<f32>(499f, -1098f, 1000f), -319f, Struct_1(global0.x, u_input.a, -1247f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-507f, var_0.a.c, global3[_wgslsmith_index_u32(4294967295u, 4u)])))), vec2<f32>(_wgslsmith_f_op_f32(round(-139f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_2, 4u)]))), abs(-(global0.x | global0.x))), select(firstLeadingBit(~vec2<i32>(1i, var_0.a.a) << ((vec2<u32>(1u, global2[_wgslsmith_index_u32(var_0.a.b.x, 29u)]) ^ u_input.b) % vec2<u32>(32u))), vec2<i32>(global0.x, var_0.a.a) | vec2<i32>(14578i, 1i), !all(vec4<bool>(var_1, var_1, true, true))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(true, func_1(), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true))), !vec4<bool>(true, func_2(), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), _wgslsmith_add_u32(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21327u, 29u)], 29u)]) != u_input.a.x));
    let var_1 = Struct_3(Struct_1(max(2147483647i, global0.x), vec3<u32>(min(4294967295u, _wgslsmith_add_u32(u_input.b.x, 55916u)), ~9749u, 1u), -322f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 4u)], -908f, -475f), vec3<f32>(-350f, 509f, global3[_wgslsmith_index_u32(4294967295u, 4u)]), var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(22532u, 4u)], -364f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31492u, 29u)], 4u)]) + vec3<f32>(1329f, 434f, global3[_wgslsmith_index_u32(285u, 4u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(562f, -1153f, global3[_wgslsmith_index_u32(u_input.c, 4u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], -210f, -2101f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 241f, global3[_wgslsmith_index_u32(u_input.b.x, 4u)]) - vec3<f32>(-782f, -1909f, -961f)) + vec3<f32>(-1088f, global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 4u)])))), 1887f, Struct_1(global0.x, u_input.a, global3[_wgslsmith_index_u32(firstTrailingBit(~49136u) << (global2[_wgslsmith_index_u32((1u << (global2[_wgslsmith_index_u32(u_input.c, 29u)] % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 20509u, u_input.c), vec3<u32>(18007u, 1u, u_input.a.x)) % 32u), 29u)] % 32u), 4u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], 950f))) + vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(u_input.a.x, 4u)]))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 4u)]))), 1557f)));
    global3 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.d.a, _wgslsmith_add_i32(-49027i, 1i), true), reverseBits(vec3<i32>(24748i, 2147483647i, i32(-1i) * -2147483647i)), -firstTrailingBit(~(vec4<i32>(1i, -2147483647i, -1i, var_1.d.a) & vec4<i32>(var_1.d.a, 2147483647i, global0.x, global0.x))), max(~(~reverseBits(u_input.b)), ~vec2<u32>(~0u, 20836u)));
}

