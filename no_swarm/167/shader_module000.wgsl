struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec2<bool>(true, true), -440f), Struct_1(vec3<u32>(21057u, 16469u, 4294967295u), vec2<bool>(true, true), 1793f), Struct_1(vec3<u32>(1u, 15570u, 24570u), vec2<bool>(true, false), -404f), Struct_1(vec3<u32>(4294967295u, 0u, 8436u), vec2<bool>(false, true), -1000f), Struct_1(vec3<u32>(13350u, 25941u, 48476u), vec2<bool>(false, false), 1790f), Struct_1(vec3<u32>(73978u, 4294967295u, 19893u), vec2<bool>(false, false), -144f), Struct_1(vec3<u32>(7570u, 43230u, 0u), vec2<bool>(false, true), -2689f), Struct_1(vec3<u32>(11850u, 0u, 3340u), vec2<bool>(true, false), 454f), Struct_1(vec3<u32>(41442u, 0u, 4294967295u), vec2<bool>(true, true), -754f), Struct_1(vec3<u32>(4294967295u, 8346u, 0u), vec2<bool>(false, false), -1242f), Struct_1(vec3<u32>(82014u, 0u, 4294967295u), vec2<bool>(false, true), 963f), Struct_1(vec3<u32>(39431u, 0u, 62495u), vec2<bool>(false, false), -2324f));

var<private> global1: array<u32, 4>;

var<private> global2: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global2 = ~vec3<i32>(-17747i, global2.x, _wgslsmith_dot_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(40727i, global2.x, -14920i), vec3<i32>(2147483647i, global2.x, global2.x)), -vec3<i32>(global2.x, global2.x, 1i)), -(~vec3<i32>(global2.x, 5508i, global2.x))));
    global1 = array<u32, 4>();
    var var_0 = Struct_3(select(vec4<bool>(false, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))), !vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, true), 1i > global2.x), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(arg_0.x, 1u), 4u)] << (arg_0.x % 32u), 12u)]);
    return ~(-972i);
}

fn func_2(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = !all(vec4<bool>(true, -32205i == func_3(vec3<u32>(46920u, 4294967295u, 22429u)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1336f, _wgslsmith_f_op_f32(f32(-1f) * -1638f), _wgslsmith_f_op_f32(f32(-1f) * -683f), -516f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2182f)) - _wgslsmith_f_op_f32(ceil(-1664f))), _wgslsmith_f_op_f32(max(194f, _wgslsmith_f_op_f32(-105f + -1299f))), _wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(f32(-1f) * -421f)))));
    var var_2 = 4294967295u;
    let var_3 = Struct_3(vec4<bool>(!select(true, true, all(vec4<bool>(true, false, true, true))), select(all(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, false))), true, true), Struct_1(~select(vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(23383u, 4u)], 58051u), vec3<u32>(u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(126817u, 4u)], 4u)]), any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.x, -999f), -706f, all(vec4<bool>(false, true, true, true))))))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(~var_3.b.a.x >> (36124u % 32u), var_3.b.a.x, global1[_wgslsmith_index_u32(var_3.b.a.x, 4u)], var_3.b.a.x), ~(~vec4<u32>(global1[_wgslsmith_index_u32(var_3.b.a.x, 4u)], 0u, 0u, var_3.b.a.x)) | vec4<u32>(u_input.a.x ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56508u, 4u)], 4u)], 4u)], _wgslsmith_mod_u32(var_3.b.a.x, u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, 1u, var_3.b.a.x), u_input.a.x)) ^ vec4<u32>(1u, u_input.a.x >> (_wgslsmith_sub_u32(var_3.b.a.x, ~4294967295u) % 32u), ~(~(~72236u)), var_3.b.a.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(min(-vec4<i32>(global2.x, 0i, global2.x, -2147483647i), ~vec4<i32>(global2.x, global2.x, global2.x, -2147483647i))), (max(vec4<i32>(45590i, 2147483647i, -1i, 1i), vec4<i32>(0i, global2.x, global2.x, -23081i)) << (~vec4<u32>(1u, 12097u, 0u, 1u) % vec4<u32>(32u))) >> (func_2(~global2.yz) % vec4<u32>(32u))), ~(~(~(-2147483647i))));
    global2 = vec3<i32>(global2.x, 16433i, ~firstLeadingBit(_wgslsmith_div_i32(66887i, var_1) << (firstTrailingBit(u_input.a.x) % 32u)));
    let var_2 = ~u_input.a.x;
    let var_3 = countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(global2.x, global2.x, var_1, -4601i) << (vec4<u32>(global1[_wgslsmith_index_u32(~var_2, 4u)], 0u, arg_3.b.a.x, reverseBits(10603u)) % vec4<u32>(32u)), abs(firstTrailingBit(vec4<i32>(var_1, -3750i, 8681i, var_1))) | _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, var_1, 15375i, global2.x), abs(vec4<i32>(global2.x, -1i, var_1, 38344i)))));
    return !select(select(vec3<bool>(true, any(arg_3.a), false != arg_2), vec3<bool>(true, arg_3.a.x, true), select(arg_3.a.xxw, select(vec3<bool>(arg_1.b.x, false, false), arg_3.a.zzw, arg_2), -593f <= arg_1.c)), vec3<bool>(all(select(arg_1.b, vec2<bool>(true, true), vec2<bool>(true, arg_3.a.x))), true, arg_2), vec3<bool>(-1000f < _wgslsmith_f_op_f32(floor(203f)), all(vec2<bool>(arg_2, false)), arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec3<u32>(41602u, 1u, u_input.a.x), vec2<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_1 = Struct_3(!vec4<bool>(!(!var_0.a.b.x), all(!vec2<bool>(var_0.a.b.x, var_0.a.b.x)), true, all(func_1(vec2<f32>(472f, 1000f), global0[_wgslsmith_index_u32(u_input.a.x, 12u)], var_0.a.b.x, Struct_3(vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, var_0.a.b.x), Struct_1(var_0.a.a, var_0.a.b, var_0.a.c))))), global0[_wgslsmith_index_u32(var_0.a.a.x, 12u)]);
    let var_2 = var_0;
    var var_3 = Struct_2(Struct_1(vec3<u32>(4294967295u >> (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.a.a.x, 4294967295u, var_2.a.a.x), 4u)] % 32u), var_2.a.a.x, 1u), var_0.a.b, _wgslsmith_f_op_f32(769f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.c))))));
    let var_4 = select(!(-20164i >= (13847i ^ -global2.x)), true, !var_0.a.b.x);
    var_1 = Struct_3(vec4<bool>(!(!var_0.a.b.x), var_0.a.b.x, all(vec4<bool>(var_1.b.b.x | var_3.a.b.x, select(var_1.a.x, false, true), select(true, var_4, true), true)), false), var_0.a);
    var var_5 = Struct_1(~vec3<u32>(3775u, 4294967295u, 0u), vec2<bool>(var_1.a.x & var_1.b.b.x, all(select(!var_3.a.b, func_1(vec2<f32>(2115f, var_3.a.c), Struct_1(var_0.a.a, var_1.a.zw, var_1.b.c), false, Struct_3(vec4<bool>(var_1.a.x, var_4, true, var_4), Struct_1(vec3<u32>(var_2.a.a.x, var_1.b.a.x, var_0.a.a.x), vec2<bool>(var_1.b.b.x, var_1.a.x), -287f))).zx, true))), _wgslsmith_f_op_f32(sign(var_0.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(25694u, global2.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1274f, var_5.c, -450f))), vec3<f32>(var_2.a.c, -1308f, -751f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.a.c)), _wgslsmith_f_op_f32(max(var_2.a.c, var_0.a.c)), var_3.a.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.c, -341f, -1357f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_5.c, var_5.c, var_0.a.c), vec3<f32>(-666f, var_3.a.c, 1191f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, 1395f)), vec2<f32>(380f, 127f), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))));
}

