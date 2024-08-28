struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), 1u));

var<private> global1: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-38879i, 2147483647i, -41566i, 5913i), vec4<i32>(0i, 0i, -1i, 1i), vec4<i32>(-49861i, 36857i, i32(-2147483648), 31335i), vec4<i32>(-60323i, 0i, -1i, 2147483647i), vec4<i32>(0i, -21105i, 0i, -33025i), vec4<i32>(-41281i, 0i, 2147483647i, -21829i), vec4<i32>(40473i, 44799i, 34470i, -1i), vec4<i32>(33927i, -21349i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -44308i, 21132i, 0i), vec4<i32>(-22148i, 25650i, -23059i, -19721i), vec4<i32>(-40009i, -3590i, -48474i, -41762i), vec4<i32>(-15745i, 2147483647i, -14644i, 16355i), vec4<i32>(-26981i, 57294i, -43168i, 1i));

var<private> global2: bool;

var<private> global3: array<Struct_2, 25>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(abs(arg_3.x) ^ 1u, 1u)];
    let var_1 = countOneBits(u_input.c);
    var var_2 = global0[_wgslsmith_index_u32(var_0.c, 1u)];
    var var_3 = vec3<u32>(u_input.a, ~var_2.c, 1u);
    var var_4 = select(select(var_0.b, vec3<bool>(var_0.b.x, !select(arg_0, var_0.b.x, var_2.a.x), true), select(var_0.a.zww, select(vec3<bool>(var_2.a.x, false, false), var_2.a.yzx, select(vec3<bool>(var_2.b.x, false, var_2.b.x), var_2.b, false)), select(!vec3<bool>(arg_0, false, var_0.a.x), !vec3<bool>(var_0.a.x, true, var_0.b.x), var_2.a.x))), vec3<bool>(select(true, var_0.b.x, true), true, select(false, false, arg_0)), var_0.b.x);
    return i32(-1i) * -u_input.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> i32 {
    return _wgslsmith_sub_i32((u_input.c.x | func_3(arg_2.a.x, ~55346i, min(u_input.a, 10843u), vec4<u32>(u_input.a, arg_0.c, 1u, 39545u) >> (vec4<u32>(0u, arg_0.c, u_input.a, arg_0.c) % vec4<u32>(32u)))) | 0i, arg_1.x);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(abs(604f));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 14u)] ^ -vec4<i32>(abs(func_2(Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, true, false), 0u), u_input.c, Struct_2(vec2<bool>(true, false), arg_0, -1i))), -u_input.c.x, _wgslsmith_add_i32(u_input.c.x, u_input.b) | -u_input.c.x, u_input.b);
    return -402f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<bool>(!any(vec3<bool>(true, true, true)), !(!all(vec4<bool>(false, false, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(1f)), 560f), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), _wgslsmith_div_i32(abs(u_input.b), 1i)));
    global1 = array<vec4<i32>, 14>();
    var var_1 = Struct_1(select(!vec4<bool>(var_0.a.x, var_0.a.x, u_input.a == u_input.a, true), !vec4<bool>(any(vec4<bool>(true, var_0.a.x, false, var_0.a.x)), true, true, any(vec3<bool>(var_0.a.x, false, false))), !(all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)) != (false & var_0.a.x))), !select(vec3<bool>(all(vec4<bool>(false, false, false, var_0.a.x)), all(var_0.a), var_0.a.x), !vec3<bool>(false, var_0.a.x, true), vec3<bool>(all(vec3<bool>(var_0.a.x, true, var_0.a.x)), !var_0.a.x, any(vec2<bool>(false, true)))), 4294967295u);
    var var_2 = Struct_1(var_1.a, select(select(!(!vec3<bool>(true, true, var_1.b.x)), select(!var_1.a.zyz, !var_1.b, 18039u != u_input.a), true), var_1.b, var_1.a.x && true), u_input.a);
    let var_3 = Struct_3(!select(vec4<bool>(var_0.b <= var_0.b, any(var_2.b), !var_0.a.x, !var_1.b.x), vec4<bool>(any(vec4<bool>(var_1.a.x, true, false, var_1.b.x)), true, var_2.a.x, var_1.a.x), vec4<bool>(true, select(var_0.a.x, var_0.a.x, false), !var_2.b.x, any(vec4<bool>(true, true, false, var_2.a.x)))), ~firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(var_1.c, 50692u, var_1.c))), vec3<i32>(max(u_input.b, 9599i), var_0.c, abs(_wgslsmith_mod_i32(firstTrailingBit(u_input.b), _wgslsmith_sub_i32(var_0.c, 38261i)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + var_0.b))))), var_0.b), Struct_1(!vec4<bool>(true, 65125u != var_1.c, false, u_input.a == 5224u), vec3<bool>(select(true, select(var_0.a.x, var_1.a.x, false), true), var_1.a.x, any(!var_1.b)), ~(~u_input.a << (var_1.c % 32u))));
    var var_4 = ~(~76068u);
    var var_5 = vec4<f32>(var_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_3.d.x))) * _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.d.x, var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(((1u & var_2.c) << (var_3.b.x % 32u)) >> (min(~u_input.a | var_2.c, _wgslsmith_sub_u32(~var_3.e.c, u_input.a)) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-(~u_input.c.x), 1i, ~var_0.c ^ ~2147483647i, _wgslsmith_mult_i32(var_0.c ^ u_input.b, _wgslsmith_mod_i32(var_3.c.x, var_0.c))), global1[_wgslsmith_index_u32(firstTrailingBit(select(~u_input.a, reverseBits(var_3.e.c), true)), 14u)]));
}

