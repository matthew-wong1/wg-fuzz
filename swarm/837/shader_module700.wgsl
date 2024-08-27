struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(67367u, 1u, 10087u), vec4<f32>(-1744f, -310f, -750f, -989f), vec3<bool>(false, false, true)), Struct_1(vec3<u32>(1u, 20526u, 0u), vec4<f32>(-1262f, 320f, -115f, -675f), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(2010u, 14662u, 4294967295u), vec4<f32>(980f, 908f, 221f, 967f), vec3<bool>(true, true, true)), Struct_1(vec3<u32>(0u, 46427u, 4294967295u), vec4<f32>(-371f, -1251f, -1347f, 713f), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(39147u, 44596u, 25094u), vec4<f32>(415f, 1123f, 412f, -579f), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(3157u, 1u, 4294967295u), vec4<f32>(1651f, -453f, 1852f, -543f), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(4294967295u, 20735u, 4294967295u), vec4<f32>(-282f, -260f, -510f, 1015f), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(4294967295u, 40531u, 1u), vec4<f32>(2260f, 1921f, -721f, 1312f), vec3<bool>(true, true, true)), Struct_1(vec3<u32>(56591u, 49908u, 65562u), vec4<f32>(118f, 703f, 467f, -402f), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(1u, 78792u, 1u), vec4<f32>(-600f, 367f, 543f, 678f), vec3<bool>(true, true, true)));

var<private> global2: array<Struct_2, 23>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global2 = array<Struct_2, 23>();
    var var_0 = ~(~vec2<i32>(1i, -1i));
    var_0 = min(~(~((vec2<i32>(7853i, 8527i) << (global0.b.a.yx % vec2<u32>(32u))) >> (global3.a.yx % vec2<u32>(32u)))), vec2<i32>(var_0.x, var_0.x));
    var_0 = vec2<i32>(~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -31944i), ~vec2<i32>(-1i, var_0.x))), -abs(-2147483647i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-609f)));
    return _wgslsmith_div_vec3_u32(countOneBits(global0.b.a), abs(global0.b.a) & select(select(global3.a, ~global0.b.a, !global3.c), ~_wgslsmith_clamp_vec3_u32(global0.b.a, global0.b.a, global0.b.a), (global3.c.x & global0.a) || any(vec2<bool>(global3.c.x, false))));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(global3.c.x, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global3.a.x, ~(~global3.a.x)), 10u)]);
    global3 = Struct_1(select(func_3(~(~global3.a.x)), ~vec3<u32>(global3.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.a.x, 42133u, 4294967295u), vec3<u32>(0u, global3.a.x, 0u)), ~global0.b.a.x), true || global0.b.c.x), global3.b, vec3<bool>(-1199f == _wgslsmith_div_f32(2121f, _wgslsmith_f_op_f32(global0.b.b.x + 1017f)), any(vec2<bool>(true, var_0.a)), any(var_0.b.c.zx)));
    global0 = global2[_wgslsmith_index_u32(select(~global3.a.x, ~u_input.a, !(!all(global3.c) == (global0.b.c.x || global3.c.x))), 23u)];
    let var_1 = firstLeadingBit(~u_input.a);
    let var_2 = !(!var_0.b.c.xz);
    return var_1 ^ ~(~_wgslsmith_dot_vec2_u32(global0.b.a.yx, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 52531u), vec2<u32>(var_1, var_1), var_0.b.a.zz)));
}

fn func_1() -> vec4<u32> {
    var var_0 = global0.b.b.x;
    var var_1 = global1[_wgslsmith_index_u32(global0.b.a.x, 10u)];
    let var_2 = _wgslsmith_f_op_f32(-global0.b.b.x);
    global2 = array<Struct_2, 23>();
    let var_3 = _wgslsmith_add_u32(74300u, max(~u_input.a, abs(1u)) ^ ~func_2());
    return max(~(~(~abs(vec4<u32>(54964u, u_input.a, 24523u, 1u)))), vec4<u32>(max(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(12929u, var_1.a.x)), 0u), ~16613u, ~18267u ^ func_3(197u >> (var_3 % 32u)).x, global3.a.x >> (var_3 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.b.zyx) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.b.zyw), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.x, global3.b.x, global0.b.b.x) - vec3<f32>(-843f, -111f, global0.b.b.x))))));
    var var_1 = 1i;
    global2 = array<Struct_2, 23>();
    global3 = global0.b;
    let var_2 = -(vec2<i32>(0i, _wgslsmith_sub_i32(52749i, 11561i)) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), global0.b.a.yx) | vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(min(global3.a.zy, abs(global0.b.a.yy)) & abs(vec2<u32>(global3.a.x, 0u)), global3.a.zz) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, 62880u, abs(u_input.a)), min(global0.b.a.x, ~global3.a.x), 4744u, firstTrailingBit(global0.b.a.x ^ global3.a.x)), firstTrailingBit(vec4<u32>(global3.a.x, 0u, global0.b.a.x, 15739u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(39555u, 15617u, 1u, global3.a.x), vec4<u32>(34360u, u_input.a, global0.b.a.x, global3.a.x), vec4<u32>(807u, 9086u, u_input.a, 4294967295u)) % vec4<u32>(32u)))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 1u, 57515u, u_input.a), func_1()), 0u), select(var_2, -_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, 1i), vec2<i32>(-19440i, var_2.x)) & vec2<i32>(-44989i, reverseBits(-5882i)), global3.c.x), _wgslsmith_sub_vec3_u32(select(~global3.a, ~vec3<u32>(global0.b.a.x, global3.a.x, 17857u), global3.c), vec3<u32>(~0u ^ select(u_input.a, global0.b.a.x, true), _wgslsmith_add_u32(_wgslsmith_mult_u32(22481u, global3.a.x), 4294967295u), ~4294967295u)));
}

