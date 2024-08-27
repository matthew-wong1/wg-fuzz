struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: vec2<f32> = vec2<f32>(427f, -468f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<u32, 1>();
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.c.xxw), vec3<u32>(_wgslsmith_sub_u32(~u_input.c.x, arg_0.b & 4294967295u), arg_0.b, u_input.c.x << ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b, 1u)], 1u)] << (0u % 32u)) % 32u))), ~(~u_input.c.x), arg_0.b);
    global0 = array<u32, 1>();
    var var_1 = false;
    var var_2 = ~4294967295u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 12725u, 1u, ~0u), _wgslsmith_sub_vec4_u32(~u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(30120u, 4294967295u, arg_0.b, u_input.a.x), u_input.c)));
    return false;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) + _wgslsmith_f_op_f32(arg_1 + -516f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(ceil(287f)))) * _wgslsmith_f_op_f32(round(-1507f))), 0u, vec2<bool>(true, !all(vec2<bool>(true, true))));
    let var_2 = Struct_2(Struct_1(-217f, u_input.a.x, var_1.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_clamp_u32(35537u, ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 1u)], 1u)], reverseBits(~1u)), vec2<bool>(select(func_3(Struct_1(272f, 1u, vec2<bool>(var_1.c.x, var_1.c.x))), all(var_1.c), var_1.a != global1.x), select(false || var_1.c.x, var_1.c.x, true))));
    var var_3 = u_input.a.zy;
    let var_4 = !vec3<bool>(any(select(!vec4<bool>(var_2.a.c.x, true, true, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_2.b.c.x), vec4<bool>(true, true, true, true))), any(select(select(vec3<bool>(true, false, var_1.c.x), vec3<bool>(false, var_2.b.c.x, var_2.b.c.x), vec3<bool>(false, var_1.c.x, false)), select(vec3<bool>(false, var_1.c.x, var_2.a.c.x), vec3<bool>(false, false, var_2.b.c.x), true), vec3<bool>(var_1.c.x, var_1.c.x, false))), var_2.a.c.x);
    return _wgslsmith_div_i32(max(~(~u_input.b), 22275i), firstTrailingBit(1i)) >> (14402u % 32u);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = vec2<i32>(func_2(firstTrailingBit(u_input.c), global1.x) ^ _wgslsmith_div_i32(u_input.b, -3126i), _wgslsmith_mod_i32(31221i, arg_0)) >> (vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13236u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41983u, 1u)], 1u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u)])) | ~46179u, 1u)] | _wgslsmith_dot_vec2_u32(~u_input.a.zx, vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]) | vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)])), 4294967295u) % vec2<u32>(32u));
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1059f, -228f, 297f, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 1882f, global1.x), vec4<f32>(1137f, global1.x, 2072f, global1.x), true)) - vec4<f32>(1034f, global1.x, 267f, -1493f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-114f, -1974f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, -973f, global1.x), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -1809f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1347f, global1.x, 319f, 1319f)), vec4<f32>(-482f, global1.x, 1141f, global1.x), all(vec2<bool>(true, false))))))));
    let var_3 = Struct_1(global1.x, reverseBits(abs(reverseBits(0u) & global0[_wgslsmith_index_u32(~1u, 1u)])), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(func_3(Struct_1(global1.x, u_input.c.x, vec2<bool>(true, false))), false), vec2<bool>(all(vec2<bool>(true, false)), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, func_3(Struct_1(290f, 1u, vec2<bool>(true, true)))), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true))), true)));
    var var_4 = ~(~countOneBits(reverseBits(vec4<i32>(-8776i, u_input.b, 1i, u_input.b)) & vec4<i32>(87577i, u_input.b, -2147483647i, 12480i)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(939f - global1.x))))), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.c, u_input.a)), select(select(select(var_3.c, var_3.c, var_3.c.x), select(vec2<bool>(var_3.c.x, false), vec2<bool>(true, var_3.c.x), var_3.c.x), var_3.c), select(vec2<bool>(false, true), vec2<bool>(var_3.c.x, var_3.c.x), vec2<bool>(true, true)), arg_0 != ~arg_0)), var_3);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = countOneBits(u_input.c.yz);
    let var_1 = 30908u;
    global0 = array<u32, 1>();
    var var_2 = Struct_3(!select(select(vec3<bool>(arg_2.a.c.x, arg_2.b.c.x, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, arg_2.b.c.x), vec3<bool>(arg_2.a.c.x, arg_2.b.c.x, true)), true), !(!vec3<bool>(arg_2.b.c.x, arg_2.b.c.x, true)), 1091f >= _wgslsmith_f_op_f32(sign(global1.x))));
    var_2 = Struct_3(select(select(select(var_2.a, vec3<bool>(false, arg_2.a.c.x, arg_2.b.c.x), select(vec3<bool>(true, true, false), var_2.a, arg_2.b.c.x)), var_2.a, true), select(!select(vec3<bool>(var_2.a.x, arg_2.a.c.x, true), vec3<bool>(true, var_2.a.x, true), vec3<bool>(false, arg_2.a.c.x, true)), select(vec3<bool>(var_2.a.x, true, arg_2.b.c.x), vec3<bool>(arg_2.a.c.x, arg_2.b.c.x, arg_2.a.c.x), arg_2.b.c.x), !select(vec3<bool>(var_2.a.x, true, false), vec3<bool>(var_2.a.x, arg_2.a.c.x, true), var_2.a)), all(!vec3<bool>(false, var_2.a.x, var_2.a.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -792f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -1497f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(round(-869f)), _wgslsmith_f_op_f32(func_4(u_input.a << (u_input.c % vec4<u32>(32u)), u_input.c.wxz << (u_input.a.wyz % vec3<u32>(32u)), func_1(-2147483647i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * global1.x), global1.x, true))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, _wgslsmith_div_f32(-2504f, 955f), _wgslsmith_f_op_f32(global1.x - -125f), _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-606f, -970f, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global1.x, global1.x, -420f)))))))));
    let var_1 = reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, -3333i), vec2<i32>(44825i, u_input.b) >> (vec2<u32>(u_input.a.x, 15277u) % vec2<u32>(32u))), ~36591i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, 28386i, u_input.b)), abs(vec3<i32>(2147483647i, u_input.b, u_input.b))), -2147483647i)) ^ abs(vec4<i32>(-41354i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(0i, u_input.b)), firstTrailingBit(u_input.b), 0i));
    let var_2 = Struct_3(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global1.x <= 158f), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, false)))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1547f, 237f, global1.x, -1547f) - vec4<f32>(108f, 798f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1363f, global1.x, global1.x, var_0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, var_0.x))), func_1(countOneBits(u_input.b)).b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(min(499f, -405f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1735f, _wgslsmith_f_op_f32(max(global1.x, -427f)), _wgslsmith_f_op_f32(f32(-1f) * -1065f), global1.x)))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_div_f32(global1.x, 327f))) + var_0.yy));
    global0 = array<u32, 1>();
    let var_3 = var_1.zww;
    let var_4 = reverseBits(global0[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec3_u32(~u_input.c.xwx, ~vec3<u32>(0u, 1u, 17218u))), 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(6430i), ~u_input.a, u_input.a);
}

