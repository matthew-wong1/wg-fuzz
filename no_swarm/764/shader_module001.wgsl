struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 20>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -824f)))))) - 166f);
    let var_1 = countOneBits(-u_input.d.yx);
    let var_2 = 72799u;
    global0 = u_input.d.x;
    let var_3 = Struct_5(true);
    return true;
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    var var_0 = vec3<bool>(select(false, all(vec2<bool>(true, true)), !(abs(35449u) > ~arg_0.c.x)), true, !(!(!func_3(Struct_5(false), u_input.a))));
    var var_1 = !select(vec4<bool>(4294967295u < arg_0.c.x, true, any(vec4<bool>(false, true, var_0.x, true)) || var_0.x, true), !(!select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false)), !vec4<bool>(select(var_0.x, var_0.x, var_0.x), all(vec3<bool>(var_0.x, true, false)), !var_0.x, true));
    let var_2 = vec4<f32>(-172f, arg_0.a.x, -2626f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x)))));
    var var_3 = u_input.d.x <= _wgslsmith_clamp_i32(u_input.d.x, -14910i, arg_0.b.x ^ -select(2147483647i, -14775i, false));
    var var_4 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, min(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), max(4294967295u, 16406u))), ~countOneBits(_wgslsmith_dot_vec4_u32(abs(u_input.c), _wgslsmith_div_vec4_u32(u_input.c, u_input.c))));
    return arg_0;
}

fn func_1() -> u32 {
    var var_0 = func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(553f, -1000f, 122f)), vec3<i32>(u_input.a.x << (u_input.b.x % 32u), ~(-67364i), ~u_input.a.x) >> (reverseBits(vec3<u32>(0u, 4294967295u, 16257u)) % vec3<u32>(32u)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 15713u), u_input.c), 82589u)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -834f);
    return ~(~1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, u_input.b.x, u_input.b.x, u_input.c.x) << (u_input.c % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 40199u, u_input.c.x, u_input.b.x))) % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_3 {
    var var_0 = func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(440f, arg_1.x, 1108f))))), max(max(countOneBits(vec3<i32>(u_input.a.x, -2147483647i, 1i)), firstLeadingBit(vec3<i32>(2147483647i, u_input.a.x, 23052i))), select(u_input.a, countOneBits(u_input.a), u_input.a.x != 37894i)), u_input.b.yx));
    global0 = -31726i;
    var var_1 = select(all(!arg_2.zxw), arg_2.x, arg_0.b);
    var var_2 = global1[_wgslsmith_index_u32(min(~arg_3, ~(~(~(25197u >> (var_0.c.x % 32u))))), 20u)];
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(16132u, 1u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(func_2(func_2(Struct_4(vec3<f32>(-532f, -2463f, arg_1.x), u_input.d.wxz, vec2<u32>(var_0.c.x, u_input.c.x)))).c.x, var_2.a ^ arg_0.a, arg_0.a), select(~u_input.b, vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 14482u), func_2(Struct_4(var_0.a, u_input.a, var_0.c)).c.x, arg_0.a), select(!arg_2.yxy, vec3<bool>(var_2.b, false, arg_2.x), arg_0.b & var_2.b)), _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 0u, 30883u), u_input.c.xww), _wgslsmith_sub_u32(1u, 1u)))));
    return Struct_3(var_3.x, !(!var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f - -221f) - 1621f)))));
    global1 = array<Struct_3, 20>();
    var var_1 = func_4(global1[_wgslsmith_index_u32(34579u, 20u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2714f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1193f)) - _wgslsmith_f_op_f32(550f + -675f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(721f))))), select(vec4<bool>(!(u_input.c.x != u_input.e), true, !any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)) & true), vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true, all(vec2<bool>(true, true)), true), !vec4<bool>(any(vec3<bool>(true, false, false)), true, false, 26970i != u_input.a.x)), ~select(~41725u, 29379u, func_1() < ~u_input.b.x));
    var var_2 = select(!(!(!(!vec4<bool>(var_1.b, var_1.b, true, false)))), select(select(select(vec4<bool>(false, false, var_1.b, false), select(vec4<bool>(var_1.b, var_1.b, var_1.b, true), vec4<bool>(true, true, var_1.b, false), true), !vec4<bool>(var_1.b, false, var_1.b, false)), select(vec4<bool>(false, var_1.b, false, false), select(vec4<bool>(true, false, var_1.b, var_1.b), vec4<bool>(true, var_1.b, var_1.b, var_1.b), vec4<bool>(var_1.b, false, true, true)), false | var_1.b), vec4<bool>(!var_1.b, var_1.b, all(vec2<bool>(var_1.b, false)), var_1.b)), vec4<bool>(false, true, true, var_1.b), func_3(Struct_5(true), min(_wgslsmith_div_vec3_i32(u_input.a, u_input.d.zzx), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), u_input.d.wyx)))), select(vec4<bool>(true, var_1.b, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true)), true), select(!vec4<bool>(true, false, var_1.b, var_1.b), vec4<bool>(all(vec3<bool>(false, false, var_1.b)), !var_1.b, u_input.d.x == 2147483647i, true), func_3(Struct_5(var_1.b), ~vec3<i32>(u_input.a.x, u_input.a.x, 6116i))), select(vec4<bool>(!var_1.b, true, func_3(Struct_5(false), u_input.d.xzz), !var_1.b), !(!vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)), false)));
    let var_3 = !(!(!vec2<bool>(!var_1.b, func_4(global1[_wgslsmith_index_u32(18211u, 20u)], vec2<f32>(-1000f, -693f), vec4<bool>(false, true, true, true), 50100u).b)));
    var_2 = vec4<bool>(!all(!(!var_2.wzw)), any(!(!vec3<bool>(var_2.x, var_1.b, var_1.b))) | true, !(_wgslsmith_dot_vec3_u32(vec3<u32>(63941u, var_1.a, 4294967295u), ~u_input.c.zww) >= _wgslsmith_sub_u32(max(u_input.c.x, 41805u), var_1.a)), all(!select(vec3<bool>(false, var_1.b, true), var_2.xww, vec3<bool>(var_1.b, true, var_2.x))) | !all(!var_2.yyw));
    let var_4 = Struct_1(var_1.b, true);
    global0 = reverseBits(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_2(func_2(Struct_4(vec3<f32>(-339f, -1000f, -1000f), vec3<i32>(4783i, -92850i, u_input.d.x), vec2<u32>(u_input.e, u_input.b.x)))).c.x));
}

