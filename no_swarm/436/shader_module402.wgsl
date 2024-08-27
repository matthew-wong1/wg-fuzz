struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = u_input.d.zz;
    global0 = vec4<bool>(!(true || arg_2) || true, false & !(~u_input.b.x > _wgslsmith_add_u32(59387u, 29819u)), all(vec4<bool>(arg_3.a < _wgslsmith_sub_u32(u_input.c, u_input.b.x), false, arg_0.b < -1000f, false)), true);
    let var_1 = arg_0.c.a;
    var var_2 = !select(vec3<bool>(global0.x, select(false, arg_1 <= -3581i, u_input.c != arg_3.a), false), global0.zww, (true || select(var_1.x, global0.x, true)) != any(!global0.wxz));
    let var_3 = !(!select(!select(vec4<bool>(var_2.x, false, arg_0.c.a.x, true), vec4<bool>(var_2.x, false, true, arg_0.c.a.x), false), select(select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(true, true, false, false), true), !vec4<bool>(true, var_1.x, false, arg_0.a.a.x), !vec4<bool>(global0.x, true, arg_0.a.a.x, arg_2)), false));
    return vec2<bool>(!(!(!(arg_2 || true))), all(vec4<bool>(any(global0.yz), true, all(select(vec2<bool>(arg_2, arg_0.a.a.x), var_1, var_3.x)), select(any(vec3<bool>(false, true, var_3.x)), true, true))));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_5(~1i);
    var var_1 = u_input.d;
    var var_2 = func_3(Struct_2(Struct_1(global0.wx, _wgslsmith_dot_vec4_i32(~vec4<i32>(-6079i, 1i, var_0.a, var_0.a), ~vec4<i32>(-2147483647i, var_0.a, 27749i, 39900i))), -263f, Struct_1(!vec2<bool>(false, global0.x), -2147483647i), var_0.a), var_0.a | 1i, true, Struct_4(reverseBits(~min(4294967295u, u_input.b.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1149f * 210f), _wgslsmith_f_op_f32(abs(608f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(120f, -273f))))));
    var_2 = vec2<bool>(global0.x, global0.x);
    var_2 = vec2<bool>(func_3(Struct_2(Struct_1(!vec2<bool>(global0.x, false), firstTrailingBit(var_0.a)), _wgslsmith_f_op_f32(1284f - -1344f), Struct_1(!global0.xw, 0i), _wgslsmith_add_i32(var_1.x, -1i)), var_0.a, true, Struct_4(_wgslsmith_dot_vec2_u32(~u_input.b.zy, ~vec2<u32>(0u, u_input.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(893f, -358f) + vec2<f32>(-1480f, 143f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-294f, 1117f) + vec2<f32>(-526f, 2173f)))))).x, global0.x | any(vec3<bool>(all(vec4<bool>(global0.x, true, global0.x, true)), global0.x, any(vec3<bool>(true, var_2.x, false)))));
    return u_input.d;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = reverseBits(func_2());
    let var_1 = Struct_2(Struct_1(global0.xz, -2912i), 150f, Struct_1(!(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), vec2<bool>(false, false))), ~(~(~var_0.x))), -(func_2().x >> ((~24471u << (max(arg_0.x, 28187u) % 32u)) % 32u)));
    var var_2 = Struct_4(firstTrailingBit(arg_0.x) >> (countOneBits(arg_0.x) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 423f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-136f, var_1.b)))))))));
    var var_3 = var_1.c.a.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-251f)));
    return var_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_mult_i32(-2147483647i, ~(-_wgslsmith_sub_i32(u_input.a, u_input.d.x) & -(~arg_0.x)));
    var var_2 = vec3<u32>(19193u, _wgslsmith_sub_u32(u_input.b.x, arg_1), u_input.b.x);
    let var_3 = Struct_5(1i & ~_wgslsmith_mult_i32(u_input.d.x, -1i));
    var_2 = vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(abs(reverseBits(vec2<u32>(u_input.c, u_input.b.x))) >> (((var_2.xx | var_2.xx) >> (vec2<u32>(1u, var_2.x) % vec2<u32>(32u))) % vec2<u32>(32u)), min(countOneBits(~var_2.xz), (u_input.b.yz ^ vec2<u32>(4517u, 1u)) >> (~var_2.zx % vec2<u32>(32u)))), ~93249u);
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(1u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(749f, 1287f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1675f, 1000f))))));
    var var_1 = Struct_2(func_4(-(vec3<i32>(u_input.d.x, 1i, 1i) >> (u_input.b % vec3<u32>(32u))), _wgslsmith_mod_u32(4294967295u, 26169u | (41591u >> (var_0.a % 32u))), func_1(u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)), func_1(vec3<u32>(4294967295u, firstTrailingBit(1u), u_input.c)).c, _wgslsmith_mult_i32(u_input.d.x, 3985i));
    var var_2 = Struct_1(var_1.a.a, _wgslsmith_add_i32(-25031i, abs(0i)));
    var var_3 = func_4(u_input.d, 48382u, Struct_2(Struct_1(!(!vec2<bool>(global0.x, false)), var_2.b), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(floor(var_0.b.x))), func_1(u_input.b).a, var_2.b));
    var var_4 = 1505f;
    let var_5 = !all(!(!select(vec3<bool>(true, global0.x, true), global0.wyz, false)));
    var var_6 = Struct_4(var_0.a, var_0.b);
    var_2 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(71770u, 21595u), _wgslsmith_div_vec3_f32(vec3<f32>(-1451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(262f, -197f))), -2499f), vec3<f32>(801f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(574f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, var_1.a.a.x)))))), var_6.b.x, abs(firstTrailingBit(abs(~vec4<u32>(var_0.a, u_input.c, u_input.b.x, 0u)))));
}

