struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(30971u, 10920u, 17470u, 4294967295u), vec4<u32>(1u, 21153u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 96792u, 1u), vec4<u32>(4294967295u, 44783u, 1u, 631u), vec4<u32>(148286u, 59940u, 51411u, 35057u), vec4<u32>(1910u, 1u, 31319u, 1u), vec4<u32>(4294967295u, 35399u, 18509u, 7448u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(7687u, 0u, 18361u, 4294967295u));

var<private> global2: f32 = -1000f;

var<private> global3: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(1713f, -1578f, 981f, 388f), vec4<f32>(330f, -896f, 1084f, -478f), vec4<f32>(2495f, -1382f, -1000f, -1007f), vec4<f32>(-1000f, -363f, 640f, -724f), vec4<f32>(530f, 1361f, 272f, 759f), vec4<f32>(1135f, 717f, -1000f, -1606f), vec4<f32>(-640f, 518f, -1392f, -1249f), vec4<f32>(-225f, 1000f, -1583f, -635f), vec4<f32>(407f, -325f, 152f, -1166f), vec4<f32>(-1310f, -919f, 171f, 890f), vec4<f32>(1438f, -343f, 479f, 107f));

var<private> global4: Struct_3 = Struct_3(Struct_2(0i, false, Struct_1(1i)), vec4<i32>(35530i, 22991i, -38515i, 0i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = global4.a;
    global2 = _wgslsmith_f_op_f32(step(793f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-1000f * -748f))))));
    global3 = array<vec4<f32>, 11>();
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1006f - -949f))), 396f, -466f));
    return false;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(2147483647i);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(754f)), _wgslsmith_f_op_f32(round(-625f)), any(vec2<bool>(global4.a.b, false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) * 1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1474f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -119f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f * 1000f)), func_3(Struct_1(global4.b.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(15289u, 1u), 31u)], Struct_2(var_0.a, global4.a.b, global0[_wgslsmith_index_u32(4294967295u, 31u)])))) + 1275f));
    global4 = Struct_3(Struct_2(-1i, any(!vec2<bool>(true, global4.a.b)), Struct_1(_wgslsmith_dot_vec3_i32(global4.b.zzx, min(global4.b.xww, vec3<i32>(u_input.b.x, u_input.a, var_0.a))))), global4.b);
    global0 = array<Struct_1, 31>();
    global4 = Struct_3(global4.a, ~vec4<i32>(select(~(-1i), var_0.a, any(vec2<bool>(global4.a.b, global4.a.b))), global4.a.a, 2147483647i, _wgslsmith_add_i32(var_0.a, -u_input.a)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-924f, 1000f)))));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    global1 = array<vec4<u32>, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-391f, 1037f, -570f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-226f, -270f, -499f))) * vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f) * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-182f - -196f), -1555f)), 883f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-138f, 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_f_op_f32(func_2()), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1882f + -1190f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, 867f, 1761f))))), select(!vec3<bool>(true, !global4.a.b, true), select(!(!vec3<bool>(true, arg_0, global4.a.b)), select(vec3<bool>(arg_0, true, global4.a.b), vec3<bool>(arg_0, arg_0, global4.a.b), arg_0), vec3<bool>(true, global4.a.b, true)), vec3<bool>(!arg_0, !(!global4.a.b), global4.a.b && global4.a.b))));
    let var_1 = Struct_3(global4.a, -abs(reverseBits(max(vec4<i32>(-34584i, -54255i, -1i, 39526i), vec4<i32>(u_input.b.x, global4.b.x, global4.a.a, u_input.b.x)))));
    var var_2 = true;
    var var_3 = global4.a;
    return vec3<bool>(var_0.x < _wgslsmith_f_op_f32(f32(-1f) * -810f), global4.b.x < (var_1.a.c.a << (1u % 32u)), all(select(vec4<bool>(arg_0, var_1.a.b, false, all(vec4<bool>(false, false, true, true))), !select(vec4<bool>(var_1.a.b, true, true, false), vec4<bool>(var_1.a.b, arg_0, false, true), vec4<bool>(false, var_3.b, false, var_3.b)), vec4<bool>(any(vec2<bool>(arg_0, false)), any(vec3<bool>(true, arg_0, var_3.b)), true, false))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> vec4<u32> {
    global1 = array<vec4<u32>, 10>();
    var var_0 = arg_1;
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), 1000f), vec2<f32>(_wgslsmith_f_op_f32(-370f + 510f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1089f, 3144f) * _wgslsmith_f_op_f32(f32(-1f) * -972f)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1705f)))));
    return _wgslsmith_sub_vec4_u32(select(vec4<u32>(36864u, _wgslsmith_div_u32(1u, arg_0.x), min(12654u, _wgslsmith_dot_vec2_u32(arg_0, arg_0)), ~(arg_0.x << (29579u % 32u))), vec4<u32>(~arg_0.x, _wgslsmith_mod_u32(31921u, 4294967295u) << (arg_0.x % 32u), firstTrailingBit(_wgslsmith_mult_u32(arg_0.x, arg_0.x)), ~55511u), !vec4<bool>(global4.a.b, true, true, false || global4.a.b)), ~_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(select(abs(arg_0.x), 51594u, global4.a.b), 10u)], global1[_wgslsmith_index_u32(~1u, 10u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 10>();
    global1 = array<vec4<u32>, 10>();
    var var_0 = func_4(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), firstTrailingBit(vec2<u32>(47741u, 1u)), abs(vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(~1u, 4913u), any(func_1(global4.a.b))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mod_u32(1u, 66839u)), _wgslsmith_dot_vec3_u32(vec3<u32>(15879u, select(63017u, 4294967295u, true), firstLeadingBit(82514u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(25021u, 1u, 0u), firstLeadingBit(vec3<u32>(15375u, 57261u, 18135u)), select(vec3<u32>(4294967295u, 1u, 32010u), vec3<u32>(43257u, 1u, 0u), global4.a.b)))), 31u)], u_input.a, !(!vec2<bool>(false, any(vec4<bool>(true, false, global4.a.b, global4.a.b)))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(-global4.b, global4.b));
    global3 = array<vec4<f32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(select(global4.b.xxy >> (~reverseBits(var_0.xwy) % vec3<u32>(32u)), ~((vec3<i32>(u_input.a, var_1.a, u_input.b.x) ^ global4.b.zzx) << (max(vec3<u32>(0u, var_0.x, var_0.x), var_0.ywy) % vec3<u32>(32u))), vec3<bool>(true, true, global4.a.b)), global4.b.zzw, vec4<u32>(1u, ~(~(~var_0.x)), 4294967295u, ~var_0.x));
}

