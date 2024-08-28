struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-605f, -1000f, -1487f, -173f, 1522f, -1710f, 750f, -277f, -756f, 851f, 757f, -584f, -2082f, 1090f, -629f, -1133f, 408f, 822f, 289f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> vec4<bool> {
    global0 = array<f32, 19>();
    var var_0 = arg_1;
    var_0 = arg_1;
    global0 = array<f32, 19>();
    return select(select(!(!select(vec4<bool>(true, false, false, var_0.c.c.x), vec4<bool>(var_0.b.c.x, true, arg_1.c.c.x, var_0.c.c.x), var_0.a)), vec4<bool>(any(!arg_1.c.c.xx), !all(vec3<bool>(false, true, true)), true, ~arg_3.x != arg_3.x), !select(select(vec4<bool>(true, var_0.c.c.x, arg_1.c.c.x, false), vec4<bool>(arg_1.b.c.x, arg_1.a, arg_2, false), vec4<bool>(false, arg_1.a, arg_1.a, var_0.b.c.x)), select(vec4<bool>(arg_2, arg_1.c.c.x, false, arg_2), vec4<bool>(true, var_0.c.c.x, arg_2, arg_2), vec4<bool>(true, false, false, true)), !arg_2)), select(select(select(!vec4<bool>(false, arg_2, arg_1.c.c.x, arg_2), vec4<bool>(arg_2, false, false, true), !vec4<bool>(false, var_0.a, arg_1.a, true)), vec4<bool>(var_0.c.c.x, false, all(vec4<bool>(true, false, true, false)), arg_2), true), !(!vec4<bool>(arg_2, arg_1.b.c.x, false, arg_1.b.c.x)), !(4294967295u == ~arg_3.x)), any(select(vec2<bool>(var_0.b.c.x, true), vec2<bool>(u_input.a.x > -2147483647i, true), true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    global0 = array<f32, 19>();
    let var_0 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, global0[_wgslsmith_index_u32(0u, 19u)]) - vec2<f32>(240f, -1280f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1044f, -119f))))) * vec2<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~0u, 19u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x | 22399u, 19u)]))), Struct_2(!select(true, true, true), Struct_1(-(u_input.a.xw << (arg_0.zz % vec2<u32>(32u))), ~u_input.a, vec3<bool>(true, true, any(vec3<bool>(true, false, false))), -(u_input.a & vec4<i32>(0i, arg_1, u_input.a.x, 0i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(39979u, 19u)] + 1000f)))), Struct_1(abs(reverseBits(vec2<i32>(arg_1, -2147483647i))), vec4<i32>(max(-24751i, 1i), arg_1, ~47593i, u_input.a.x & -8015i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), abs(vec4<i32>(u_input.a.x, u_input.a.x, 29822i, 1i)), _wgslsmith_f_op_f32(f32(-1f) * -336f))), all(vec2<bool>(!all(vec3<bool>(true, false, true)), true)), ~(~vec4<u32>(arg_0.x, 41112u, ~arg_0.x, 47858u)));
    var var_1 = Struct_2(var_0.x, Struct_1(vec2<i32>(-19408i, -50719i), firstLeadingBit(u_input.a), vec3<bool>(var_0.x, var_0.x, !all(var_0.zxw)), firstLeadingBit(vec4<i32>(arg_1, countOneBits(u_input.a.x), -2147483647i ^ arg_1, _wgslsmith_sub_i32(arg_1, -11076i))), global0[_wgslsmith_index_u32(~(~firstLeadingBit(arg_0.x)), 19u)]), Struct_1(~u_input.a.zx, ~(reverseBits(vec4<i32>(arg_1, 21334i, -4766i, -53855i)) ^ vec4<i32>(1i, u_input.a.x, 1i, 2147483647i)), select(!var_0.zzw, var_0.xxz, !(!vec3<bool>(var_0.x, var_0.x, true))), vec4<i32>(u_input.a.x, 1i, u_input.a.x, ~u_input.a.x), _wgslsmith_f_op_f32(trunc(1f))));
    global0 = array<f32, 19>();
    var_1 = Struct_2(!(-961f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 19u)])))), var_1.c, Struct_1(~(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(arg_1, -29198i))), firstLeadingBit(-_wgslsmith_div_vec4_i32(var_1.c.b, vec4<i32>(var_1.c.a.x, 62345i, -29573i, -2147483647i))), vec3<bool>(var_1.b.c.x, var_0.x, true), vec4<i32>(1i, select(1i, abs(2147483647i), var_1.a), abs(0i), _wgslsmith_sub_i32(reverseBits(arg_1), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(var_1.b.b.x, var_1.c.a.x, var_1.b.b.x)))), _wgslsmith_f_op_f32(-var_1.b.e)));
    return ~3776u;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(vec3<u32>(1u, 1u, 1u), u_input.a.x >> (10159u % 32u)), 1u), 19u)]);
    var var_1 = Struct_2(all(vec3<bool>(all(vec3<bool>(true, true, true)), !any(vec3<bool>(true, false, true)), false)), Struct_1(u_input.a.zw & vec2<i32>(max(28541i, u_input.a.x), -55625i), u_input.a | (vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 1i, -42964i, -2147483647i)), vec3<bool>(1570f > global0[_wgslsmith_index_u32(~1u, 19u)], any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true), vec4<i32>(firstTrailingBit(u_input.a.x), -22678i | u_input.a.x, ~0i, abs(0i)), 824f), Struct_1(vec2<i32>(max(u_input.a.x, -u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.xzz)), -abs(vec4<i32>(u_input.a.x, 44444i, u_input.a.x, 0i)), select(func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1358f, -742f))), Struct_2(false, Struct_1(u_input.a.wy, u_input.a, vec3<bool>(true, true, false), vec4<i32>(u_input.a.x, u_input.a.x, 28122i, -62454i), global0[_wgslsmith_index_u32(1u, 19u)]), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, vec3<bool>(true, false, false), vec4<i32>(u_input.a.x, 0i, 2147483647i, 4128i), -1000f)), true, vec4<u32>(1u, 1u, 1u, 1u)).xyx, !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), true), u_input.a, global0[_wgslsmith_index_u32(1u, 19u)]));
    let var_2 = 1112f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1129f, var_1.c.e, global0[_wgslsmith_index_u32(143853u, 19u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.e, var_2, -2038f))) + vec3<f32>(_wgslsmith_div_f32(var_1.c.e, 110f), var_2, 523f)))));
    let var_4 = !var_1.b.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f + _wgslsmith_f_op_f32(-var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), global0[_wgslsmith_index_u32(~abs(~1u), 19u)], _wgslsmith_f_op_f32(f32(-1f) * -2215f), global0[_wgslsmith_index_u32(~6853u, 19u)]);
    var var_1 = Struct_2(-281f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), var_0.x)))), Struct_1(~((u_input.a.xy << (vec2<u32>(4294967295u, 53414u) % vec2<u32>(32u))) << (vec2<u32>(2086u, 1u) % vec2<u32>(32u))), -(vec4<i32>(-1i) * -u_input.a), !func_3(vec2<f32>(var_0.x, -499f), Struct_2(true, Struct_1(u_input.a.wx, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, true, false), u_input.a, -233f), Struct_1(vec2<i32>(0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, false), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(49803u, 19u)])), false, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 89478u, 7231u, 78200u), vec4<u32>(11902u, 72847u, 907u, 1u))).xwx, -_wgslsmith_div_vec4_i32(u_input.a & vec4<i32>(2147483647i, -21145i, u_input.a.x, -45279i), -u_input.a), 532f), Struct_1(~vec2<i32>(firstTrailingBit(0i), ~u_input.a.x), ~(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a) ^ vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), vec3<bool>(true != select(true, false, true), select(true, true, func_3(var_0.yw, Struct_2(false, Struct_1(vec2<i32>(u_input.a.x, 1i), u_input.a, vec3<bool>(true, false, true), vec4<i32>(u_input.a.x, -52711i, u_input.a.x, -2147483647i), 935f), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a, vec3<bool>(false, false, true), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), 1384f)), true, vec4<u32>(3323u, 1u, 75514u, 4294967295u)).x), false), -u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(667f, 379f))))));
    let var_2 = true;
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(17684u, 19u)] * _wgslsmith_f_op_f32(f32(-1f) * -342f)), 20037u);
}

