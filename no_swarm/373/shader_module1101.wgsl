struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    return _wgslsmith_mod_i32(~countOneBits(-2147483647i | global4.b.b) | -40961i, global1.d);
}

fn func_2() -> vec4<bool> {
    global0 = Struct_2(global4.b, Struct_1(u_input.a.zyz, 1i, _wgslsmith_mult_vec4_i32(~vec4<i32>(global4.a.d, global0.b.d, u_input.c, 0i), vec4<i32>(func_3(), global4.a.d, select(2147483647i, global4.a.d, true), global1.b)), -2147483647i, !vec3<bool>(true, true, !global0.b.e.x)), countOneBits(u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global4.d - global4.d), global0.d, u_input.a.x <= global1.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d) + global0.d)))));
    var var_0 = vec2<u32>(abs(global0.b.a.x), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~global1.a.x, 1u), 4294967295u));
    return vec4<bool>(true, true, !(!select(all(vec4<bool>(global2.e.x, false, global2.e.x, global4.b.e.x)), !global1.e.x, any(vec2<bool>(false, false)))), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    global4 = Struct_2(Struct_1(~select(~arg_2, _wgslsmith_mod_vec3_u32(vec3<u32>(global4.a.a.x, global4.c.x, arg_2.x), global4.c.ywy), true), 0i, vec4<i32>(~(-2147483647i), u_input.c >> (~arg_1.a.x % 32u), _wgslsmith_div_i32(max(global1.d, global0.a.b), global1.b), 1i), ~(~(~u_input.b)), arg_1.e), Struct_1(vec3<u32>(firstLeadingBit(~23764u), ~arg_2.x ^ 23040u, _wgslsmith_div_u32(~arg_1.a.x, ~4294967295u)), 0i, global0.b.c, u_input.b, global4.b.e), global4.c, global4.d);
    var var_0 = -239f;
    let var_1 = 47374u;
    let var_2 = countOneBits(global1.a.x);
    var var_3 = ~_wgslsmith_sub_vec4_u32(~(global0.c ^ min(vec4<u32>(4294967295u, global1.a.x, 4294967295u, var_2), vec4<u32>(43375u, u_input.a.x, 0u, global1.a.x))), _wgslsmith_div_vec4_u32(~u_input.a, countOneBits(vec4<u32>(arg_2.x, var_2, 4294967295u, 35476u))));
    return global4.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>) -> u32 {
    global2 = func_4(select(func_2(), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, arg_0.x), false), !select(!vec4<bool>(false, global1.e.x, global4.b.e.x, global1.e.x), !vec4<bool>(global0.a.e.x, global0.a.e.x, global1.e.x, true), !global0.a.e.x)), global4.b, ~(global1.a ^ vec3<u32>(98672u, global1.a.x, global2.a.x)) << (vec3<u32>(global2.a.x, 18115u, 4294967295u) % vec3<u32>(32u)), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.a.e.x, global0.a.e.x, global0.a.e.x, false), vec4<bool>(global1.e.x, global0.b.e.x, true, false), false), vec4<bool>(true, false, true, global2.e.x)), !select(vec4<bool>(global0.b.e.x, false, false, global1.e.x), vec4<bool>(true, global1.e.x, global2.e.x, global4.b.e.x), global1.e.x), select(!vec4<bool>(global4.a.e.x, global1.e.x, global4.a.e.x, false), vec4<bool>(true, global1.e.x, true, global0.b.e.x), any(vec4<bool>(true, arg_0.x, arg_0.x, true))))));
    var var_0 = vec3<u32>(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.a.x, global2.a.x, 40367u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u)), _wgslsmith_mod_u32(global0.b.a.x, global1.a.x), arg_0.x), global0.a.a.x, ~1u);
    var var_1 = global2.c.zx;
    var_1 = vec2<i32>(func_4(!func_2(), global0.a, ~(~global0.b.a), global4.b.e.x).b << (4294967295u % 32u), 46731i);
    let var_2 = ~105037u;
    return firstTrailingBit(var_0.x) | firstTrailingBit(func_4(!(!vec4<bool>(true, global0.b.e.x, arg_0.x, global0.b.e.x)), global4.b, vec3<u32>(~global4.a.a.x, ~4294967295u, var_2), true).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true | !(func_1(global4.a.e.xx, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.d.x, -1520f, 2233f, -1407f)))) != u_input.a.x);
    global3 = global1.b;
    global3 = u_input.b;
    global2 = Struct_1(u_input.a.yyx, -828i, global0.b.c, func_3(), func_4(vec4<bool>(select(true, global2.e.x, global1.c.x >= 13330i), true, all(!vec4<bool>(true, global1.e.x, false, false)), any(vec2<bool>(false, global2.e.x))), global4.a, func_4(select(!vec4<bool>(true, false, false, global1.e.x), vec4<bool>(global2.e.x, global4.b.e.x, true, false), func_2()), Struct_1(vec3<u32>(1u, global4.c.x, 32811u), global0.b.c.x, func_4(vec4<bool>(global4.a.e.x, true, global0.a.e.x, false), Struct_1(vec3<u32>(4294967295u, global0.c.x, global1.a.x), global1.c.x, global0.b.c, global1.c.x, global0.b.e), global2.a, true).c, func_3(), func_4(vec4<bool>(false, false, global2.e.x, global2.e.x), Struct_1(vec3<u32>(global4.c.x, global0.c.x, 4294967295u), u_input.c, global2.c, 16740i, global4.b.e), vec3<u32>(4294967295u, global1.a.x, global4.a.a.x), var_0).e), max(vec3<u32>(1u, global0.b.a.x, 17331u) & vec3<u32>(global2.a.x, 37275u, 4294967295u), vec3<u32>(global4.a.a.x, 21668u, 16181u) ^ vec3<u32>(global0.c.x, 51764u, 4264u)), true).a, false).e);
    var var_1 = ~global4.b.c.wzy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~u_input.a.wyw, _wgslsmith_div_vec3_u32(global1.a, ~max(vec3<u32>(1u, u_input.a.x, 4294967295u), global1.a))), ~global1.a.xz, global4.d.x);
}

