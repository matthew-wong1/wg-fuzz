struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(133f, -498f, 2091f, 231f);

var<private> global1: u32 = 59934u;

var<private> global2: f32;

var<private> global3: vec3<u32> = vec3<u32>(0u, 4294967295u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = ~(-38484i);
    var var_1 = !select(arg_0, select(arg_0, vec2<bool>(true, true), arg_0), arg_0);
    var_0 = _wgslsmith_div_i32(-1i, ~arg_1.a.x);
    var var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-103f))));
    return -21121i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = select(vec3<i32>(func_3(!(!vec2<bool>(false, arg_3.b)), arg_0), 14162i, arg_0.a.x), select(-abs(firstTrailingBit(vec3<i32>(arg_2, -2147483647i, 1i))), ~vec3<i32>(u_input.a.x, ~1i, 1i), ~(~global3.x) >= global3.x), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0.b, false), false), vec3<bool>(false, true, arg_0.b), arg_3.b), vec3<bool>(arg_0.b, arg_3.b && false, true), false), !select(vec3<bool>(false, arg_0.b, arg_3.b), vec3<bool>(arg_0.b, arg_0.b, false), true), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(644f + global0.x) + 862f), arg_1, arg_1) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), 464f));
    var var_2 = global3.x;
    var var_3 = arg_3.b;
    var var_4 = arg_0;
    return _wgslsmith_div_i32(1i, var_4.a.x) & arg_3.a.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(~(~arg_1), _wgslsmith_sub_i32(~(-2147483647i), u_input.a.x), _wgslsmith_div_i32(-22837i, _wgslsmith_add_i32(-2147483647i, arg_1)), u_input.b.x), min(vec4<i32>(-2147483647i, arg_1, func_2(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), false), 719f, u_input.b.x, Struct_1(u_input.a, true)), arg_1) >> (min(vec4<u32>(4294967295u, global3.x, global3.x, 11258u) & vec4<u32>(7797u, global3.x, 1u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(global3.x, global3.x, 29359u, 0u), vec4<u32>(global3.x, global3.x, global3.x, global3.x))) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(-65368i, -22566i, -31348i, arg_1), vec4<i32>(u_input.a.x, 2147483647i, -35324i, 2147483647i), vec4<i32>(2147483647i, arg_1, u_input.b.x, arg_1) & vec4<i32>(37272i, u_input.b.x, 7261i, 0i))));
    var var_1 = ~64601u;
    return Struct_1(-_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 0i), var_0.yy)), min(-vec2<i32>(arg_1, u_input.b.x), u_input.b)), all(select(vec4<bool>(true, true, all(vec3<bool>(false, true, true)), any(vec2<bool>(false, true))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), any(vec3<bool>(false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(31809i, 0i), true);
    let var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-289f, global0.x) * -925f), global0.x), var_0.a.x);
    global3 = _wgslsmith_add_vec3_u32(~(~reverseBits(vec3<u32>(global3.x, 13030u, 1u))), vec3<u32>(34818u, 1u, global3.x));
    var var_2 = Struct_1(vec2<i32>(var_1.a.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(func_2(var_0, global0.x, -2530i, Struct_1(vec2<i32>(-59949i, -679i), false)), ~2147483647i), var_0.a.x << (31479u % 32u))), var_1.b);
    var var_3 = var_0.b;
    var_2 = func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 434f, 1052f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.xxz, vec3<f32>(-204f, -1399f, -653f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 2597f, global0.x))), vec3<bool>(~global3.x >= 1u, all(!vec2<bool>(var_2.b, false)), var_1.b & !var_2.b))), 1374i);
    let x = u_input.a;
    s_output = StorageBuffer(12729u, -abs(var_1.a.x));
}

