struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    global1 = false;
    return 10345u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(global0.a, global2.b, _wgslsmith_sub_u32(7066u, u_input.e) & func_3(global0.a.zz, global2.a.x, vec2<i32>(u_input.a.x, u_input.d), Struct_2(Struct_1(global0.a, global0.b, 4294967295u))))), 0u, Struct_1(select(select(!vec3<bool>(true, global0.a.x, false), vec3<bool>(true, global0.a.x, false), all(global2.a)), vec3<bool>(any(vec4<bool>(global0.a.x, true, true, false)), global2.a.x, false), !vec3<bool>(false, global2.a.x, global0.a.x)), select(vec4<u32>(~u_input.e, ~0u, ~4294967295u, 1u), global0.b | (global0.b & vec4<u32>(0u, global0.c, global2.c, 2589u)), vec4<bool>(true, all(vec3<bool>(global0.a.x, true, true)), !global2.a.x, true)), countOneBits(1u)));
    var var_1 = var_0.c;
    var_1 = Struct_1(select(var_1.a, vec3<bool>(true, true, any(!global2.a.zy)), !global0.a.x), var_0.a.a.b, global0.c);
    let var_2 = 4294967295u;
    global1 = true;
    return var_0.a;
}

fn func_1() -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = u_input.c.x;
    let var_1 = -(~countOneBits(u_input.d));
    global2 = arg_0.a;
    var var_2 = Struct_3(arg_0, ~(~(~17633u) >> (countOneBits(arg_0.a.c & global2.c) % 32u)), Struct_1(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, all(vec3<bool>(false, global0.a.x, true))), ~(~vec4<u32>(16621u, global2.c, u_input.c.x, 0u) << (~vec4<u32>(global0.b.x, global2.c, 0u, u_input.e) % vec4<u32>(32u))), ~(~(~32378u))));
    var var_3 = var_2.a.a.a.x && global2.a.x;
    return Struct_2(func_1().a);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(func_1(), ~countOneBits(min(_wgslsmith_sub_u32(4294967295u, arg_1.a.b.x), ~25526u)), arg_1.a);
    global0 = arg_1.a;
    var_0 = Struct_3(var_0.a, abs(func_3(!(!var_0.a.a.a.xy), all(arg_2), ~vec2<i32>(u_input.b.x, -1i), Struct_2(Struct_1(var_0.a.a.a, vec4<u32>(global0.c, global0.c, 0u, 17212u), 66776u)))), Struct_1(vec3<bool>(true, any(arg_2.wx) | true, global2.a.x), global2.b, func_1().a.c));
    global1 = any(vec3<bool>(all(global0.a), !arg_1.a.a.x, !any(!arg_1.a.a.zy)));
    var var_1 = false;
    return Struct_3(func_1(), func_1().a.b.x, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.xy;
    let var_1 = func_5(u_input.b, func_4(func_1()), !select(!vec4<bool>(false, global0.a.x, true, true), !vec4<bool>(true, global0.a.x, true, true), all(!global0.a.zz)));
    let var_2 = ~func_2().a.b.xzw;
    global2 = Struct_1(func_5(u_input.b, func_5(reverseBits(u_input.a.yx), func_5(u_input.a.zx << (var_1.c.b.wx % vec2<u32>(32u)), var_1.a, select(vec4<bool>(global0.a.x, global0.a.x, var_1.c.a.x, var_1.a.a.a.x), vec4<bool>(global0.a.x, false, true, global0.a.x), vec4<bool>(false, global0.a.x, false, global0.a.x))).a, select(vec4<bool>(true, false, global2.a.x, var_1.a.a.a.x), select(vec4<bool>(global2.a.x, false, true, true), vec4<bool>(false, true, false, var_1.c.a.x), vec4<bool>(global0.a.x, false, false, global0.a.x)), 99630u >= global2.c)).a, vec4<bool>(any(!vec4<bool>(false, var_1.a.a.a.x, false, global0.a.x)), true, select(true & global0.a.x, true, var_1.a.a.a.x | var_1.a.a.a.x), true)).a.a.a, _wgslsmith_mod_vec4_u32(var_1.c.b, global2.b), 59130u);
    let var_3 = Struct_3(Struct_2(var_1.a.a), (firstLeadingBit(var_2.x) & 13323u) | ~4301u, var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(-(~abs(vec2<i32>(u_input.b.x, 2147483647i))) | -_wgslsmith_add_vec2_i32(u_input.a.zy, countOneBits(vec2<i32>(1i, u_input.a.x))), -firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 0i), u_input.b.x, ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1001f), _wgslsmith_f_op_f32(f32(-1f) * -1261f), _wgslsmith_f_op_f32(step(-927f, 1852f)), 1826f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 361f, -1000f, 795f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(146f, 150f, -936f, 363f), vec4<f32>(1864f, -1895f, 139f, 332f)))), vec4<bool>(func_5(vec2<i32>(u_input.d, u_input.b.x), Struct_2(Struct_1(global2.a, vec4<u32>(10590u, var_0.x, 0u, var_0.x), 33201u)), vec4<bool>(var_3.a.a.a.x, global0.a.x, var_3.a.a.a.x, true)).c.a.x, var_1.a.a.a.x || var_1.c.a.x, func_2().a.a.x, func_1().a.a.x)))), 30035i);
}

