struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(global1.xyy, -9469i, _wgslsmith_div_i32(arg_3.a.x, ~_wgslsmith_sub_i32(-17085i, arg_3.a.x)));
    global1 = vec4<bool>(global1.x, false, false, (select(any(var_0.a), select(false, true, false), global1.x) && (10166i >= u_input.c)) && !all(select(vec4<bool>(var_0.a.x, false, var_0.a.x, global1.x), vec4<bool>(global1.x, arg_2, arg_2, arg_2), vec4<bool>(global1.x, var_0.a.x, false, global1.x))));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~global0.x, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(50918u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 34603u, 1u), arg_1.www)), u_input.b.x), ~(~arg_1.xyz));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-664f, arg_3.b) - vec2<f32>(arg_3.b, 798f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, 851f) + vec2<f32>(-2134f, arg_3.b)) - _wgslsmith_div_vec2_f32(vec2<f32>(-478f, 1383f), vec2<f32>(arg_3.b, arg_3.b))))));
    var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1993f, -278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2013f - -767f), arg_3.b, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f + var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1207f) * -181f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.b), 105f))));
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: f32) -> vec4<i32> {
    var var_0 = arg_2;
    var var_1 = all(select(vec4<bool>(!all(vec4<bool>(global1.x, false, global1.x, arg_0.a.x)), true, arg_0.a.x, true), !vec4<bool>(global1.x, true, arg_0.a.x, !global1.x), select(!select(vec4<bool>(arg_0.a.x, global1.x, global1.x, false), vec4<bool>(true, arg_0.a.x, false, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x)), select(!vec4<bool>(global1.x, arg_0.a.x, false, global1.x), select(vec4<bool>(arg_0.a.x, true, false, global1.x), vec4<bool>(arg_0.a.x, global1.x, false, false), vec4<bool>(true, false, true, global1.x)), true), vec4<bool>(true, any(vec2<bool>(false, global1.x)), arg_0.a.x, any(vec3<bool>(global1.x, arg_0.a.x, global1.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(403f, -564f, -880f, 1405f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-752f, arg_2.b, arg_3, -605f) * vec4<f32>(arg_3, 675f, arg_2.b, arg_3))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-192f, _wgslsmith_f_op_f32(ceil(-279f)), _wgslsmith_f_op_f32(-arg_2.b), arg_2.b)))));
    var_1 = true;
    let var_3 = abs(~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.x, global0.x, global0.x), ~vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(38830u, 10011u, 0u))));
    return vec4<i32>((arg_2.a.x >> (1u % 32u)) >> (global0.x % 32u), _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mod_i32(arg_1.x, arg_1.x)) & _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, arg_0.b, arg_2.a.x), 4492i), _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2.a.x, -1i), arg_1.x)), (abs(func_3(arg_2.a.x, vec4<u32>(var_3.x, var_3.x, global0.x, 52024u), true, arg_2)) >> (134661u % 32u)) >> (abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_3.yz, vec2<u32>(43794u, var_3.x)), vec2<u32>(u_input.b.x, global0.x))) % 32u), 1i);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> u32 {
    global1 = select(vec4<bool>(any(vec4<bool>(arg_0, arg_0, !global1.x, false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-638f)))) > _wgslsmith_f_op_f32(min(-797f, _wgslsmith_f_op_f32(abs(-159f)))), true, global1.x), vec4<bool>(all(!(!vec4<bool>(global1.x, false, false, false))), (abs(global0.x) | ~62911u) > abs(_wgslsmith_div_u32(global0.x, 6914u)), global1.x, all(vec2<bool>(global1.x, global1.x))), vec4<bool>(true, any(!(!vec4<bool>(arg_0, false, true, global1.x))), arg_1.b == 1000f, global1.x));
    global1 = select(vec4<bool>(!all(vec4<bool>(arg_0, true, false, global1.x)), true, all(select(vec3<bool>(global1.x, false, false), select(vec3<bool>(false, false, global1.x), global1.xxw, true), arg_0)), (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, 27524u)) == _wgslsmith_mod_u32(global0.x, global0.x)) && ((global0.x <= global0.x) && false)), vec4<bool>(true, false, all(!(!vec4<bool>(true, arg_0, false, global1.x))), global1.x), !vec4<bool>(true, false, false, global1.x));
    global1 = vec4<bool>(!all(vec2<bool>(false, false)), true, any(select(global1.xzw, vec3<bool>(all(global1.xx), global1.x, false), vec3<bool>(global1.x, true, true))), all(!global1.zwz));
    let var_0 = Struct_1(global1.xxz, func_3(arg_1.a.x, abs(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 60819u, 58293u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 19509u, 1u, 1441u), vec4<u32>(4294967295u, global0.x, global0.x, global0.x), vec4<u32>(u_input.b.x, 16164u, 4294967295u, global0.x)))), any(vec4<bool>(true, true, global1.x, arg_0 != global1.x)), arg_1), u_input.a);
    let var_1 = -1544f;
    return abs(24781u) ^ firstTrailingBit(_wgslsmith_div_u32(global0.x, u_input.b.x));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = global1.x;
    var var_1 = _wgslsmith_clamp_i32(-(~_wgslsmith_div_i32(-u_input.a, -1i)), reverseBits(u_input.a), 16133i);
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0 | 39955u, u_input.b.x, arg_0), ~vec3<u32>(u_input.b.x, 28749u, global0.x)), ~(~_wgslsmith_sub_u32(arg_0, arg_0)));
    var_2 = _wgslsmith_add_u32(reverseBits(0u) & global0.x, func_4(true, Struct_2(func_2(Struct_1(vec3<bool>(global1.x, global1.x, global1.x), u_input.c, u_input.c), vec4<i32>(-24243i, -2147483647i, u_input.c, u_input.a), Struct_2(vec4<i32>(u_input.c, -25479i, -1i, -2147483647i), 1016f), -235f), -1661f)) ^ global0.x);
    var_1 = u_input.c;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<u32>(min(func_1(global0.x) << (~global0.x % 32u), reverseBits(~u_input.b.x)) ^ 1u, 11543u);
    var var_0 = select(!select(global1.yz, select(vec2<bool>(global1.x, false), global1.wz, !global1.zz), select(global1.wy, !vec2<bool>(global1.x, false), select(false, true, false))), !(!vec2<bool>(any(vec4<bool>(global1.x, global1.x, false, true)), all(global1.wx))), select(select(global1.ww, select(global1.xz, select(vec2<bool>(false, true), global1.yy, global1.x), global1.x), !vec2<bool>(global1.x, global1.x)), global1.yw, !(true & all(global1.zz))));
    let var_1 = select(_wgslsmith_mult_vec3_u32(abs(abs(vec3<u32>(2170u, 85249u, 14402u))), min(~vec3<u32>(global0.x, global0.x, global0.x), min(vec3<u32>(u_input.b.x, 74440u, 0u), vec3<u32>(global0.x, u_input.b.x, global0.x)))), vec3<u32>(~global0.x & _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 1u, global0.x, global0.x)), 0u, reverseBits(u_input.b.x)), vec3<bool>(all(global1.zw), var_0.x, select(true, false, select(var_0.x, false, global1.x)))) >> (vec3<u32>(abs(1u), u_input.b.x, 0u) % vec3<u32>(32u));
    var var_2 = Struct_1(select(select(select(select(global1.yxz, vec3<bool>(false, true, global1.x), global1.wwx), select(global1.xwy, vec3<bool>(false, var_0.x, false), global1.zxy), !var_0.x), global1.xzw, vec3<bool>(false, true, true)), global1.zxy, var_0.x), u_input.c, 20314i);
    var var_3 = vec4<u32>(u_input.b.x, 65235u, _wgslsmith_dot_vec2_u32(~select(u_input.b, vec2<u32>(var_1.x, global0.x), global1.wy), select(max(vec2<u32>(18734u, global0.x), vec2<u32>(u_input.b.x, global0.x)) | reverseBits(u_input.b), select(~u_input.b, ~vec2<u32>(22360u, u_input.b.x), select(var_2.a.xz, vec2<bool>(true, var_2.a.x), true)), vec2<bool>(!var_0.x, -37883i >= var_2.c))), max(var_1.x | 58746u, func_4(all(var_2.a.zz) != all(vec4<bool>(false, global1.x, false, var_2.a.x)), Struct_2(~vec4<i32>(var_2.b, -25818i, u_input.a, 30564i), _wgslsmith_f_op_f32(924f * -1000f)))));
    let var_4 = Struct_1(select(global1.zyx, select(var_2.a, var_2.a, global1.yww), var_3.x >= ~11816u), abs(u_input.a), var_2.b);
    var var_5 = var_4;
    var_2 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wz, -191f);
}

