struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32>;

var<private> global2: array<f32, 20> = array<f32, 20>(684f, 131f, 2161f, -401f, 1059f, -1112f, 883f, -770f, 522f, -1561f, 416f, -1000f, -478f, -988f, -2065f, 1338f, -117f, 1602f, -408f, 233f);

var<private> global3: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = vec4<i32>(abs(_wgslsmith_mult_i32(global0.a, global0.a)), global0.a, global1.x, 58856i) & vec4<i32>(reverseBits(global0.a), 2147483647i, -52639i, -4414i);
    global2 = array<f32, 20>();
    let var_1 = arg_0;
    let var_2 = Struct_1(global1.x, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.b.xwx, u_input.a.zyy), abs(global0.b.x)), firstLeadingBit(64727u | global0.b.x), _wgslsmith_mod_u32(global0.b.x, 4294967295u)), ~((1u & u_input.a.x) & select(u_input.a.x, 0u, true)), ~64280u, u_input.a.x));
    var var_3 = Struct_1(~1i, ~u_input.a);
    return -1813f;
}

fn func_3(arg_0: f32) -> vec2<u32> {
    var var_0 = -7668i >= ~global1.x;
    let var_1 = Struct_2(vec3<f32>(-622f, -1269f, global2[_wgslsmith_index_u32(1u << (1u % 32u), 20u)]));
    global0 = Struct_1(min(reverseBits(-29341i), 1i) & global0.a, ~u_input.a);
    global1 = ~select(select(-vec3<i32>(-2147483647i, global1.x, 15089i), -vec3<i32>(23054i, -1i, global0.a), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true))), abs(vec3<i32>(-2147483647i, global1.x, global0.a) >> (global0.b.xww % vec3<u32>(32u))) & (vec3<i32>(-1i) * -vec3<i32>(global0.a, global0.a, global0.a)), !all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true)));
    global1 = select(firstTrailingBit(reverseBits(reverseBits(-vec3<i32>(1i, global0.a, global1.x)))), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, 2147483647i, 1470i), abs(vec3<i32>(global0.a, global0.a, -38381i) & -vec3<i32>(global0.a, -1i, -1i))), false);
    return vec2<u32>(_wgslsmith_clamp_u32(1u, global0.b.x, max(~reverseBits(u_input.a.x), _wgslsmith_sub_u32(global0.b.x, ~4294967295u))), u_input.a.x);
}

fn func_1() -> vec3<i32> {
    var var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a << (1u % 32u), global1.x) >> (func_3(_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(global2[_wgslsmith_index_u32(global0.b.x, 20u)], global2[_wgslsmith_index_u32(3184u, 20u)], 354f))))) % vec2<u32>(32u)), vec2<i32>(-13240i, -7004i));
    let var_1 = !vec3<bool>(all(vec4<bool>(true, true, true, true)), false, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.a, global1.x, global1.x, global1.x)), vec4<i32>(global1.x, global1.x, global1.x, global1.x) | vec4<i32>(-25507i, -4045i, global1.x, 17233i)) >= global0.a);
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(~(-vec4<i32>(global1.x, -38112i, global1.x, global0.a))), vec4<i32>(i32(-1i) * -1i, ~_wgslsmith_mult_i32(global1.x, -50779i), global0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-16936i, 2147483647i), vec2<i32>(global0.a, -1i)), global0.a))), vec4<i32>((-61574i ^ global1.x) | 0i, countOneBits(-2147483647i), ~(~global1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global1.x, -1i, -1i), vec4<i32>(19918i, global0.a, global1.x, global1.x)) << (~63106u % 32u)) & vec4<i32>(global1.x, i32(-1i) * -global1.x, reverseBits(1i), max(global0.a, abs(-32319i))));
    var_0 = ~_wgslsmith_dot_vec3_i32(-max(min(var_2.zyy, var_2.wxy), abs(var_2.wyz)), _wgslsmith_mult_vec3_i32(var_2.yww, var_2.xzz));
    return vec3<i32>(~0i, _wgslsmith_clamp_i32(global0.a, 2147483647i, -67241i), reverseBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, -10535i), var_2.x)) & -(~(~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec3_i32(func_1() ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(global1.x, global1.x, -2147483647i), abs(vec3<i32>(2147483647i, 1i, 8666i))), -(vec3<i32>(global0.a, 4794i, global0.a) >> (vec3<u32>(global0.b.x, 13642u, 0u) % vec3<u32>(32u))), ~vec3<i32>(1i, global0.a, -2147483647i)), vec3<i32>(14479i, global0.a | 11335i, global0.a));
    let var_0 = !(!vec3<bool>(_wgslsmith_add_i32(global0.a, global0.a) <= 1i, true, ~global0.a == firstLeadingBit(91647i)));
    global3 = global1.x;
    var var_1 = select(!select(!select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, false), var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x || true), false), !vec4<bool>(var_0.x, all(vec4<bool>(false, var_0.x, true, true)), var_0.x, var_0.x), !(!select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 20u)])))) * _wgslsmith_f_op_f32(1359f + -940f)) - global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-411f - _wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(-739f, global2[_wgslsmith_index_u32(global0.b.x, 20u)], global2[_wgslsmith_index_u32(0u, 20u)])))))).x, 20u)]);
    let var_3 = ~4294967295u;
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1i), ~0i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_4, 20u)], -2196f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 557f), vec2<f32>(127f, global2[_wgslsmith_index_u32(10364u, 20u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(85819u, 20u)], -1921f))))))), 720f);
}

