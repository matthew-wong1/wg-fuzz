struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(43855u, 44780u), vec2<u32>(1u, 1u), vec2<u32>(10812u, 765u), vec2<u32>(1u, 0u), vec2<u32>(14417u, 50874u), vec2<u32>(4294967295u, 33974u), vec2<u32>(34300u, 44771u), vec2<u32>(31148u, 1u), vec2<u32>(22691u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(47410u, 29484u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 10724u), vec2<u32>(5542u, 0u), vec2<u32>(17117u, 15846u), vec2<u32>(6393u, 1u), vec2<u32>(28111u, 4294967295u), vec2<u32>(20565u, 7201u), vec2<u32>(0u, 1u), vec2<u32>(62930u, 5453u), vec2<u32>(42376u, 0u), vec2<u32>(4294967295u, 66221u), vec2<u32>(40315u, 1u), vec2<u32>(23787u, 35359u), vec2<u32>(9763u, 0u), vec2<u32>(20940u, 17455u), vec2<u32>(4294967295u, 98396u), vec2<u32>(4294967295u, 36978u), vec2<u32>(33948u, 73265u), vec2<u32>(4294967295u, 0u), vec2<u32>(15369u, 3340u), vec2<u32>(0u, 15122u));

var<private> global1: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global2: vec4<i32> = vec4<i32>(-10979i, 23822i, 2147483647i, -21664i);

var<private> global3: array<i32, 16>;

var<private> global4: Struct_2 = Struct_2(Struct_1(false, -27156i, 869f, true), vec3<bool>(false, true, true), 0u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> bool {
    global4 = Struct_2(Struct_1((_wgslsmith_f_op_f32(ceil(global4.a.c)) <= _wgslsmith_f_op_f32(-arg_3.a.c)) & (global4.a.a | all(vec4<bool>(arg_3.a.d, arg_3.b.x, global4.b.x, true))), _wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 6210i, global3[_wgslsmith_index_u32(arg_3.c, 16u)], global4.a.b), vec4<i32>(0i, 39793i, 15890i, global3[_wgslsmith_index_u32(1u, 16u)])), ~vec4<i32>(-2147483647i, arg_3.a.b, arg_3.a.b, 2147483647i), false), abs(select(vec4<i32>(arg_0, global2.x, 21481i, arg_0), vec4<i32>(-20344i, arg_3.a.b, global3[_wgslsmith_index_u32(u_input.a.x, 16u)], arg_3.a.b), global4.b.x))), global4.a.c, any(vec3<bool>(all(arg_3.b.xy), global4.b.x, arg_1))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global4.c, 4294967295u), 4294967295u, ~12479u), ~(~vec3<u32>(u_input.a.x, u_input.a.x, arg_3.c)), u_input.a.wxw), u_input.a.yzw), 6u)], _wgslsmith_mult_u32(abs(~(4294967295u | arg_2)), arg_2));
    global3 = array<i32, 16>();
    return ~9791i > (arg_0 >> (26028u % 32u));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(global4.a, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(~u_input.a.wxx, ~u_input.a.wxy), ~27946u), 6u)], _wgslsmith_mult_u32(1u, u_input.a.x));
    global4 = var_0;
    global4 = Struct_2(global4.a, select(vec3<bool>(!all(vec2<bool>(true, global4.a.d)), (var_0.b.x && true) | true, true), select(vec3<bool>(var_0.a.d, func_3(1i, false, var_0.c, var_0), all(vec4<bool>(true, global4.b.x, global4.a.a, global4.b.x))), !select(vec3<bool>(global4.a.a, true, var_0.b.x), vec3<bool>(global4.a.a, false, var_0.b.x), vec3<bool>(false, global4.b.x, true)), false), !vec3<bool>(global4.a.d, global4.a.d, var_0.b.x)), max(reverseBits(reverseBits(reverseBits(global4.c))), abs(_wgslsmith_sub_u32(global4.c >> (var_0.c % 32u), 1u))));
    var var_1 = var_0;
    let var_2 = !((any(vec2<bool>(true, false)) | !var_0.a.a) && true);
    return ~(var_1.a.b ^ var_1.a.b);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = true;
    let var_1 = true;
    var var_2 = ~arg_0.c;
    var var_3 = var_1;
    var var_4 = u_input.a.zz;
    return Struct_1(true, func_2(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c))))), all(vec3<bool>(!var_1, ~global4.c != 82757u, false)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1720f, arg_0.a.c, 794f, 381f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(560f, -272f, arg_1.c, -1000f)))))));
    global4 = arg_0;
    global3 = array<i32, 16>();
    var var_1 = ~_wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(1u, 1u)), arg_0.c << (16625u % 32u));
    let var_2 = func_1(Struct_2(arg_1, vec3<bool>(arg_0.b.x, true, any(!arg_0.b.xy)), (_wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(u_input.a.x, 15438u)) & 1u) | 1u));
    return ~vec4<i32>(_wgslsmith_mult_i32(min(global2.x, arg_1.b), var_2.b), _wgslsmith_add_i32(~max(arg_2.b, 0i), arg_2.b), -47554i, 26347i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~(-func_4(Struct_2(global4.a, vec3<bool>(true, true, global4.a.a), u_input.a.x), Struct_1(true, 32196i, global4.a.c, true), func_1(Struct_2(global4.a, global1[_wgslsmith_index_u32(1u, 6u)], 15299u)))));
    let var_0 = ~firstTrailingBit(select(-vec4<i32>(1i, global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(u_input.a.x, 16u)], 69962i), vec4<i32>(~global3[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_add_i32(global2.x, global4.a.b), 1i, global4.a.b), !(!vec4<bool>(global4.a.a, false, false, global4.b.x))));
    let var_1 = Struct_2(global4.a, select(select(global4.b, select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, global4.b.x), false), vec3<bool>(global4.a.a, global4.a.a, global4.a.d), global4.b.x), vec3<bool>(global4.b.x | global4.a.d, global4.a.a, select(false, global4.a.d, global4.a.a))), !select(global4.b, select(vec3<bool>(true, global4.b.x, false), global4.b, vec3<bool>(global4.b.x, true, global4.b.x)), true), vec3<bool>(false, all(!vec4<bool>(global4.a.a, false, false, false)), func_3(21913i, false, abs(global4.c), Struct_2(Struct_1(true, global3[_wgslsmith_index_u32(18277u, 16u)], global4.a.c, true), global4.b, u_input.a.x)))), 1u);
    let var_2 = Struct_1(var_1.b.x, select(-1i, -2147483647i, (638f <= _wgslsmith_f_op_f32(global4.a.c + -131f)) != func_1(var_1).a), global4.a.c, all(select(!(!vec2<bool>(global4.b.x, global4.a.a)), var_1.b.xy, all(vec2<bool>(global4.a.d, true)))));
    global3 = array<i32, 16>();
    global1 = array<vec3<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.a.x, _wgslsmith_mult_u32(global4.c, ~84580u));
}

