struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(1i, 0i, 1i));

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 23> = array<u32, 23>(1u, 90441u, 99021u, 37771u, 14100u, 0u, 4294967295u, 18668u, 8902u, 63040u, 0u, 420u, 96782u, 4294967295u, 39661u, 17072u, 0u, 10554u, 4294967295u, 77060u, 96286u, 0u, 8972u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> vec3<f32> {
    global0 = array<vec3<i32>, 1>();
    var var_0 = _wgslsmith_div_i32(~max(6825i, abs(24990i)), 811i);
    let var_1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 23u)], 23u)], 1u)] | global0[_wgslsmith_index_u32(0u, 1u)];
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1412f, _wgslsmith_f_op_f32(-133f - -197f)))))), -1163f, -831f);
}

fn func_3() -> vec3<i32> {
    var var_0 = any(vec4<bool>(!(~global1.x < global1.x), -2036f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x), !(!all(vec3<bool>(false, false, false))), false));
    let var_1 = vec4<u32>(global1.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 15162u), select(vec2<u32>(~global1.x, 0u), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global1.yw, global1.zy), vec2<u32>(86858u, global1.x) >> (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u)), vec2<u32>(global1.x, 4294967295u)), any(vec4<bool>(false, false, false, true)) | true)), ~_wgslsmith_clamp_u32(902u, 0u, global1.x));
    global0 = array<vec3<i32>, 1>();
    let var_2 = Struct_4(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, true), all(vec3<bool>(true, false, false))), (any(vec4<bool>(false, true, true, true)) && true) || false), Struct_1(~vec3<i32>(-48229i << (var_1.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -25689i)), u_input.a), true && all(vec2<bool>(true, true)), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(46296u, var_1.x), vec2<u32>(62312u, global2[_wgslsmith_index_u32(0u, 23u)]), var_1.yy), _wgslsmith_mod_vec2_u32(~global1.xw, global1.yy)), vec3<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false)) & true, false)), Struct_2(Struct_1(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), select(true, true, any(vec2<bool>(false, true))), vec3<bool>(global1.x <= 1u, true, false), var_1.yw, select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), true)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(33486u, global1.x ^ global1.x), 1u)], (var_1.x > global2[_wgslsmith_index_u32(4294967295u, 23u)]) & select(true, true, true), vec3<bool>(true, true, false), global1.ww, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(37075u, 1u)]));
    global1 = var_1;
    return _wgslsmith_sub_vec3_i32(~(~vec3<i32>(var_2.b.a.x, -41790i, u_input.a) | global0[_wgslsmith_index_u32(4294967295u << (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), global1.xzx), 23u)] % 32u), 1u)]), _wgslsmith_sub_vec3_i32(abs(firstTrailingBit(vec3<i32>(-1i, 14803i, u_input.a))), global0[_wgslsmith_index_u32(~(~1u), 1u)]));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -752f), arg_0)))));
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
    var var_2 = Struct_2(Struct_1(func_3(), !select(true, true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), min(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)] & 1107u, 1u << (global1.x % 32u)), global1.yx), vec3<bool>(true, true, true)), Struct_1(vec3<i32>(u_input.a ^ 29913i, u_input.a, _wgslsmith_clamp_i32(2147483647i, i32(-1i) * -2147483647i, u_input.a)), all(vec2<bool>(true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), vec2<u32>(15499u, global1.x), vec3<bool>(true, true, !any(vec4<bool>(true, true, false, false)))), vec2<bool>(-445f < var_1.x, all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true))), ~countOneBits(~(vec3<i32>(u_input.a, u_input.a, -41262i) >> (global1.xww % vec3<u32>(32u)))));
    global2 = array<u32, 23>();
    return ~(~global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(global2[_wgslsmith_index_u32(global1.x, 23u)], func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)))), firstTrailingBit(1u), select(~global1.x, ~global2[_wgslsmith_index_u32(1u, 23u)], all(vec4<bool>(false, false, true, true))) & ~_wgslsmith_add_u32(~global1.x, _wgslsmith_dot_vec2_u32(global1.xw, vec2<u32>(4294967295u, 4294967295u))));
    var var_0 = Struct_4(vec2<bool>(true, true), Struct_1(abs(abs(~vec3<i32>(u_input.a, u_input.a, u_input.a))), true, !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), any(vec4<bool>(false, true, true, true))), ~vec2<u32>(global1.x, ~4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true))), Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(global1.x, 1u)], vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(global1.x, 1u)], vec3<i32>(u_input.a, u_input.a, -1i))), true, !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), global1.wx, vec3<bool>(false, any(vec3<bool>(true, false, true)), true)), Struct_1(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -49296i)), 4294967295u >= global1.x, vec3<bool>(true, true, true), ~_wgslsmith_div_vec2_u32(vec2<u32>(68749u, 59852u), global1.xy), vec3<bool>(true, true, true)), vec2<bool>(true, true), -vec3<i32>(-71737i, u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a))));
    global0 = array<vec3<i32>, 1>();
    var var_1 = var_0.c;
    var var_2 = var_0.c.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(10233i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, 664f, _wgslsmith_div_f32(-471f, _wgslsmith_f_op_f32(f32(-1f) * -2116f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(floor(1777f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-199f, 285f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-461f, _wgslsmith_f_op_f32(f32(-1f) * -523f))))), 776f), vec3<i32>(var_1.a.a.x, select(~1i, min(14107i, var_1.d.x), var_0.a.x), u_input.a));
}

