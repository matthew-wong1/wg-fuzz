struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(true, true, true), false);

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 30347i);

var<private> global2: vec4<u32>;

var<private> global3: array<u32, 24>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    global2 = min(u_input.a, min(~_wgslsmith_sub_vec4_u32(~u_input.a, ~vec4<u32>(global2.x, 1u, u_input.a.x, 23754u)), vec4<u32>(_wgslsmith_mult_u32(~global2.x, abs(global2.x)), min(u_input.a.x, ~u_input.a.x), 1u, global2.x ^ u_input.a.x)));
    global3 = array<u32, 24>();
    global3 = array<u32, 24>();
    var var_0 = Struct_5(Struct_2(Struct_1((u_input.a.x << (26081u % 32u)) ^ 1u, vec3<u32>(~14339u, _wgslsmith_dot_vec2_u32(vec2<u32>(43738u, 0u), u_input.a.xy), 5390u), global0.a, ~(-vec4<i32>(arg_0.x, global1.x, -2147483647i, u_input.b.x))), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -1i, 8693i)), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, -3591i), vec3<i32>(-13776i, 0i, arg_0.x))))), !vec4<bool>(!select(global0.a.x, false, global0.b), false, u_input.b.x < u_input.b.x, global0.b), Struct_1(~0u, u_input.a.yzx, !vec3<bool>(-1i == u_input.b.x, true, true), ~vec4<i32>(select(u_input.b.x, arg_0.x, global0.b), max(global1.x, u_input.b.x), 1i, abs(global1.x))), 4294967295u);
    var var_1 = global0.a.x;
    return !global0.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    let var_0 = Struct_1(68600u, countOneBits(vec3<u32>(min(_wgslsmith_sub_u32(1u, arg_0.a.a), ~0u), _wgslsmith_div_u32(1u, max(56181u, 0u)), u_input.a.x)), arg_0.a.c, arg_0.a.d & firstLeadingBit((arg_0.a.d << (u_input.a % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(13042i, global1.x, 1i, arg_0.a.d.x), arg_2.a.d)));
    global2 = ~_wgslsmith_clamp_vec4_u32(select(u_input.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, global2.x, 106978u, 0u), vec4<u32>(arg_2.a.b.x, arg_3.x, 0u, global2.x)), select(select(vec4<bool>(true, true, global0.b, arg_2.a.c.x), vec4<bool>(var_0.c.x, false, false, arg_0.a.c.x), vec4<bool>(var_0.c.x, var_0.c.x, arg_0.a.c.x, true)), select(vec4<bool>(arg_2.a.c.x, arg_0.a.c.x, arg_0.a.c.x, arg_2.a.c.x), vec4<bool>(global0.b, arg_0.a.c.x, var_0.c.x, global0.b), false), !var_0.c.x)), ~u_input.a ^ u_input.a, vec4<u32>(~global3[_wgslsmith_index_u32(~2875u, 24u)], _wgslsmith_dot_vec3_u32(vec3<u32>(26441u, 0u, arg_2.a.b.x), var_0.b), (27751u ^ u_input.a.x) >> ((global3[_wgslsmith_index_u32(0u, 24u)] & arg_2.a.b.x) % 32u), 76465u));
    let var_1 = Struct_4(!vec3<bool>(!arg_2.a.c.x, global0.a.x, firstLeadingBit(global2.x) != arg_2.a.a), true);
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~(~(~global2.x)), 24u)], arg_3.x), global2.x);
    let var_3 = arg_0;
    return var_1.a.x;
}

fn func_4(arg_0: bool) -> bool {
    global0 = Struct_4(select(vec3<bool>(true, (u_input.b.x ^ global1.x) > 2891i, true), select(global0.a, vec3<bool>(false, global0.b, any(vec3<bool>(arg_0, false, true))), global0.b), true), false);
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global2.x, 24u)] ^ 1201u, global2.x), min(u_input.a.x, _wgslsmith_sub_u32(global2.x, 72144u)), global2.x)), 24u)], abs(~abs(vec3<u32>(30817u, global3[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u))), !vec3<bool>(!arg_0, true, all(select(vec2<bool>(false, global0.b), global0.a.zy, global0.a.xy))), min(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(70980i, u_input.b.x, -1i, 1i)), vec4<i32>(global1.x, 25252i, firstLeadingBit(22981i), 1i | global1.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x) & vec4<i32>(-15467i, -1i, u_input.b.x, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(42660i, global1.x, 44967i, -2082i), vec4<i32>(u_input.b.x, 22015i, global1.x, -6068i))), countOneBits(vec4<i32>(1i, global1.x, 26993i, -2147483647i) >> (vec4<u32>(u_input.a.x, global2.x, global3[_wgslsmith_index_u32(4294967295u, 24u)], 78457u) % vec4<u32>(32u))))));
    let var_1 = vec3<f32>(-1588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(743f, -782f)))))), _wgslsmith_f_op_f32(select(-581f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1736f))) - _wgslsmith_f_op_f32(abs(-348f))), !(!all(var_0.c)))));
    var var_2 = Struct_5(Struct_2(Struct_1(global2.x, abs(max(vec3<u32>(global3[_wgslsmith_index_u32(15829u, 24u)], 33639u, global2.x), u_input.a.zzx)), vec3<bool>(any(vec4<bool>(true, arg_0, var_0.c.x, false)), !arg_0, func_3(Struct_2(Struct_1(0u, global2.xzy, global0.a, vec4<i32>(u_input.b.x, var_0.d.x, -63960i, global1.x)), global1.x), var_0.d, Struct_2(Struct_1(1u, var_0.b, vec3<bool>(arg_0, true, arg_0), vec4<i32>(global1.x, u_input.b.x, u_input.b.x, global1.x)), var_0.d.x), vec4<u32>(var_0.a, 4294967295u, var_0.a, 18640u))), vec4<i32>(u_input.b.x, -global1.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), i32(-1i) * -60648i)), -10491i), select(vec4<bool>(func_2(vec2<i32>(global1.x, -2147483647i)).x, all(!vec4<bool>(var_0.c.x, false, var_0.c.x, arg_0)), !all(vec3<bool>(var_0.c.x, false, var_0.c.x)), !global0.b), vec4<bool>(global0.b, all(global0.a.yz), all(!global0.a.zz), var_0.c.x), all(!(!vec3<bool>(true, var_0.c.x, var_0.c.x)))), Struct_1(global2.x, ~(~(vec3<u32>(24456u, u_input.a.x, 44661u) >> (u_input.a.yzz % vec3<u32>(32u)))), var_0.c, var_0.d), u_input.a.x);
    var var_3 = Struct_5(var_2.a, !vec4<bool>(false, arg_0, arg_0, var_2.c.c.x), var_2.c, _wgslsmith_sub_u32(4294967295u, var_0.b.x) | select(~global3[_wgslsmith_index_u32(60815u, 24u)], ~(28951u | var_2.a.a.b.x), func_3(Struct_2(var_2.c, var_0.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, global1.x, -3973i, -11679i), var_2.a.a.d), Struct_2(var_2.a.a, var_0.d.x), vec4<u32>(global3[_wgslsmith_index_u32(37864u, 24u)], global2.x, 19785u, 1u))));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    global2 = u_input.a;
    global0 = Struct_4(select(!select(select(vec3<bool>(global0.b, false, true), global0.a, global0.a), func_2(global1.yx), true), !(!func_2(vec2<i32>(16197i, 0i))), vec3<bool>(func_4(func_3(Struct_2(Struct_1(4294967295u, vec3<u32>(arg_1.x, global2.x, 1u), global0.a, vec4<i32>(u_input.b.x, -23509i, arg_2, -31110i)), 2147483647i), vec4<i32>(0i, u_input.b.x, 1i, u_input.b.x), Struct_2(Struct_1(global2.x, vec3<u32>(355u, global2.x, 34625u), vec3<bool>(true, true, global0.a.x), vec4<i32>(global1.x, 35078i, -2147483647i, global1.x)), -54859i), arg_1)), false, false)), 1000f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-218f + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-785f, -1077f) - _wgslsmith_f_op_f32(trunc(arg_0))), true)));
    global1 = -select(~(-(~vec3<i32>(u_input.b.x, global1.x, u_input.b.x))), ~(~countOneBits(vec3<i32>(-1i, global1.x, 28171i))), !(u_input.a.x < global3[_wgslsmith_index_u32(abs(1u), 24u)]));
    let var_0 = Struct_2(Struct_1(~arg_1.x, select(countOneBits(vec3<u32>(38509u, 1u, global3[_wgslsmith_index_u32(0u, 24u)])), min(vec3<u32>(global3[_wgslsmith_index_u32(39414u, 24u)], 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 24u)]), arg_1.zzx), vec3<bool>(true, global0.a.x, global0.a.x)) & (vec3<u32>(46537u, global2.x, 21128u) << (vec3<u32>(global2.x, 1u, 4294967295u) % vec3<u32>(32u))), global0.a, vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-11851i, arg_2), vec2<i32>(arg_2, u_input.b.x))), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -1i, 1i, global1.x), vec4<i32>(-3873i, 11399i, u_input.b.x, u_input.b.x)), arg_2, _wgslsmith_div_i32(select(-2147483647i, global1.x, global0.b), _wgslsmith_mod_i32(u_input.b.x, arg_2)))), _wgslsmith_div_i32(select(firstTrailingBit(_wgslsmith_div_i32(-1i, -1i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, -65885i), vec3<i32>(u_input.b.x, -57502i, 1i))), any(!vec4<bool>(global0.a.x, false, false, global0.b))), -1i));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -420f), u_input.a, reverseBits(_wgslsmith_mult_i32(27089i, u_input.b.x)), -485f), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(global2.wyy, vec3<i32>(-61859i | (var_0.b | _wgslsmith_clamp_i32(2147483647i, u_input.b.x, 2147483647i)), -21473i, u_input.b.x), global2.x, 1i);
}

