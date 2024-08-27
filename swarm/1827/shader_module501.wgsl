struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: Struct_1;

var<private> global2: array<u32, 4>;

var<private> global3: i32 = -37668i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = ~(u_input.a & 4294967295u);
    return -18466i;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    var var_0 = false;
    var var_1 = ~(~arg_2.d.b << (4294967295u % 32u));
    global0 = vec4<bool>(false, select(!global0.x, !any(vec2<bool>(false, arg_1.a.b)), !select(all(vec4<bool>(true, true, arg_1.a.c, false)), arg_1.a.c != arg_2.c, true)), all(select(select(vec4<bool>(false, true, global0.x, arg_1.a.b), vec4<bool>(arg_2.c, global1.b, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(arg_1.a.c, global1.c, true, false), true)), !vec4<bool>(false, global0.x, global0.x, false), !vec4<bool>(arg_0.a.c, false, arg_0.a.b, global1.c))), any(!select(!global0.zxw, !global0.www, !vec3<bool>(global1.c, arg_0.a.b, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1779f, _wgslsmith_f_op_f32(f32(-1f) * -2692f))), _wgslsmith_f_op_f32(arg_2.b.a * 920f))), _wgslsmith_f_op_f32(-1f), 757f));
    global1 = arg_0.a;
    return arg_0.a.d;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = !vec4<bool>(true, false, true, any(!vec2<bool>(arg_0.x, arg_0.x)));
    var var_0 = 20896i;
    let var_1 = global1.c || false;
    global0 = vec4<bool>(true, any(vec2<bool>(true, true)) == !arg_2.x, global1.b, global0.x);
    let var_2 = Struct_4(arg_1.xz, Struct_3(-738f, -2147483647i), true, Struct_3(244f, -(2147483647i >> (~arg_1.x % 32u))));
    return Struct_1(-abs(vec2<i32>(_wgslsmith_mult_i32(global1.a.x, var_2.d.b), global1.a.x)), !global1.c, any(!(!global0.wwx)), global1.d, vec4<u32>(arg_1.x, ~(countOneBits(var_2.a.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(global1.e.x, u_input.a)) % 32u)), ~firstLeadingBit(global2[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(vec2<i32>(var_2.b.b, -26853i), var_2.c, true, global1.e.x, vec4<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(12672u, 4u)], 21703u))), Struct_2(Struct_1(global1.a, false, true, 0u, global1.e)), var_2), 4u)]), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec3<bool>(true, select(global1.c, global0.x, global0.x), true), vec3<bool>(true, true, true), all(!vec4<bool>(false, global0.x, false, global1.b))));
    global3 = 17756i;
    var var_1 = global1.a.x;
    var var_2 = Struct_1(global1.a, true, all(select(select(vec4<bool>(global0.x, true, false, global0.x), !vec4<bool>(global1.b, false, global0.x, false), !global0.x), !vec4<bool>(true, false, global1.b, false), !(global0.x && var_0.x))), global1.d, global1.e);
    global0 = vec4<bool>(!(~(-var_2.a.x) < func_1(25908u)), !global1.c, false, global1.b);
    let var_3 = Struct_2(func_2(!var_0.xy, ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.e.x, global2[_wgslsmith_index_u32(u_input.a, 4u)], 1u), vec3<u32>(4294967295u, 1u, u_input.a)), global1.e.xzx), select(vec2<bool>(all(var_0.xz), global1.a.x <= var_2.a.x), !vec2<bool>(var_0.x, false), vec2<bool>(!global1.b, var_0.x))));
    global2 = array<u32, 4>();
    var_2 = func_2(!global0.zz, vec3<u32>(~(var_2.e.x ^ ~var_2.d), 0u, ~36152u), select(select(vec2<bool>(true, var_0.x), !var_0.zz, !var_2.c & !var_2.b), global0.yw, (true != var_3.a.b) & true));
    let var_4 = select(global0.zx, select(select(!var_0.xy, global0.yx, global0.zz), var_0.xz, !(~var_2.a.x != ~var_2.a.x)), all(select(vec4<bool>(true, true, global0.x, true), select(!vec4<bool>(var_2.c, false, var_2.c, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_2.c, global0.x, global1.c, true)), !select(vec4<bool>(true, true, global1.b, false), vec4<bool>(false, var_2.b, global0.x, true), vec4<bool>(false, false, false, var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(var_3.a.a.x, 23150i), global1.a.x), reverseBits(-countOneBits(vec4<i32>(-2147483647i, var_3.a.a.x, 0i, var_2.a.x)) << (countOneBits(reverseBits(vec4<u32>(var_2.e.x, 4294967295u, 8685u, global2[_wgslsmith_index_u32(global1.e.x, 4u)]))) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -443f, -1685f, _wgslsmith_f_op_f32(430f - -115f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-910f, -273f, 1000f, -317f)))))), global2[_wgslsmith_index_u32(firstLeadingBit(0u), 4u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-503f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-504f - 673f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(102f))))));
}

