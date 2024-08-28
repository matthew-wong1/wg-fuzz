struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(1560f, -165f, 296f, 1953f, -209f, 1303f, -107f, -183f, 198f, -594f, 182f, -642f, 480f, 464f, 1118f, -393f, 976f);

var<private> global1: array<Struct_3, 17>;

var<private> global2: array<Struct_3, 2>;

var<private> global3: u32 = 5323u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = select(vec3<bool>(true, true, 2513i < _wgslsmith_div_i32(~52474i, max(-21269i, u_input.a.x))), select(vec3<bool>(all(vec2<bool>(false, true)), select(false, true, any(vec4<bool>(false, false, false, false))), true), vec3<bool>(true, !(arg_0.b >= arg_0.b), select(all(vec3<bool>(true, false, false)), u_input.a.x < 15456i, all(vec4<bool>(true, false, true, false)))), 2147483647i >= (firstTrailingBit(-1i) | _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), true);
    global2 = array<Struct_3, 2>();
    global3 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(floor(-544f)))), 1037f, select(var_0.x, true, var_0.x)))) * global0[_wgslsmith_index_u32(~max((u_input.d.x & u_input.c.x) >> (~u_input.d.x % 32u), u_input.d.x), 17u)]);
    let var_2 = 821f;
    return 1u;
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_3(Struct_4(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(~u_input.d.x, 17u)]), _wgslsmith_f_op_f32(trunc(-490f)))), 17u)]);
    var var_1 = Struct_2(Struct_1(vec3<i32>(-3375i, _wgslsmith_sub_i32(select(2147483647i, u_input.a.x, false), ~u_input.a.x), ~(2147483647i & u_input.b)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), !(all(vec4<bool>(false, false, false, true)) | all(vec4<bool>(false, true, true, false))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-893f, -1230f)), _wgslsmith_f_op_f32(ceil(-662f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c.x, 17u)])))), vec2<u32>(u_input.d.x, ~u_input.d.x), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 17u)], 1099f), Struct_1(abs(_wgslsmith_mod_vec3_i32(u_input.a.zxx, u_input.a.yyy) << (~vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, true)), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), all(vec2<bool>(false, true)))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true)));
    var_1 = Struct_2(Struct_1(firstLeadingBit(vec3<i32>(-4932i, var_1.a.a.x, u_input.b)) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), vec3<u32>(var_1.c.x, 4727u, var_1.c.x)), ~vec3<u32>(var_1.c.x, u_input.c.x, 41038u), ~vec3<u32>(u_input.d.x, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), !(!var_1.a.b), var_1.b & all(select(vec4<bool>(var_1.a.b.x, var_1.a.c, var_1.a.b.x, false), var_1.a.b, vec4<bool>(true, true, var_1.b, false))), var_1.e.b.ywy, !vec2<bool>(any(var_1.e.d), any(vec3<bool>(false, var_1.a.c, false)))), true, min(~vec2<u32>(var_1.c.x, 97205u), var_1.c), -152f, var_1.a);
    let var_2 = _wgslsmith_dot_vec3_u32(countOneBits(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(19698u, 1u, u_input.c.x), ~vec3<u32>(75612u, 4294967295u, 7275u), ~vec3<u32>(var_1.c.x, 108795u, var_1.c.x))), vec3<u32>(1u, abs(1u >> (~var_1.c.x % 32u)), max(4294967295u, ~var_1.c.x)));
    let var_3 = 4294967295u;
    return var_1.c;
}

fn func_1() -> vec4<bool> {
    let var_0 = vec2<u32>(~countOneBits(abs(0u)), 4287u);
    global1 = array<Struct_3, 17>();
    let var_1 = func_2();
    global1 = array<Struct_3, 17>();
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(2272f * _wgslsmith_f_op_f32(round(-743f))), global0[_wgslsmith_index_u32(~27113u, 17u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, u_input.d.x), 17u)] * 1475f));
    return vec4<bool>(true, false, true, ~(u_input.d.x >> (u_input.c.x % 32u)) < u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 17>();
    let var_0 = func_1();
    global1 = array<Struct_3, 17>();
    let var_1 = Struct_2(Struct_1(u_input.a.xzw, !vec4<bool>(true, true, var_0.x, 27818i != u_input.a.x), !var_0.x, var_0.xww, vec2<bool>(!(4294967295u == u_input.d.x), !(u_input.b >= -1i))), var_0.x, ~u_input.c, 1418f, Struct_1(u_input.a.xxw, vec4<bool>(~u_input.c.x != u_input.d.x, false, var_0.x, true), _wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(79614u, 17u)])) < 1000f, select(vec3<bool>(var_0.x, !var_0.x, false), vec3<bool>(any(vec2<bool>(false, var_0.x)), true, false), !var_0.zwz), select(var_0.xz, !select(var_0.zx, var_0.yx, var_0.x), all(var_0.zyw))));
    global3 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_1.c.x, 17u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_1.c.x, 17u)])))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, global0[_wgslsmith_index_u32(var_1.c.x, 17u)])) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(var_1.c.x, 17u)]), vec2<f32>(var_1.d, global0[_wgslsmith_index_u32(u_input.c.x, 17u)])))), vec2<f32>(_wgslsmith_f_op_f32(var_1.d * var_1.d), -534f)))));
}

