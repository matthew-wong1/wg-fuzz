struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32 = -15937i;

var<private> global2: vec4<bool>;

var<private> global3: Struct_5;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~4294967295u), ~u_input.c), ~(~vec2<u32>(0u, 4834u))) != (abs(u_input.c & arg_0) ^ (arg_0 | ((4294967295u & global3.b) << (~global3.c.d.a % 32u))));
    global1 = 46084i;
    let var_0 = -global3.c.c;
    global0 = true;
    let var_1 = !vec4<bool>(all(vec2<bool>(true, global2.x)), !global2.x, any(vec4<bool>(false, global2.x, u_input.c != 0u, false & global2.x)), true);
    return global3.c.c.wzx;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<u32>) -> u32 {
    return arg_2.x;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<i32>) -> i32 {
    global1 = ~reverseBits(1i);
    return _wgslsmith_sub_i32(arg_2.x, select(max(min(~arg_0.c.e, _wgslsmith_div_i32(-15547i, u_input.a)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_0.c.c, global3.c.c), arg_2.x >> (u_input.c % 32u))), arg_0.d, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(u_input.c);
    var var_1 = vec2<u32>(29455u, u_input.c);
    var var_2 = all(global2.wyx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(718f, _wgslsmith_f_op_f32(-global3.c.a), global2.x)), func_2(global3.c, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, global3.c.e, -2147483647i), -vec3<i32>(1i, u_input.a, 2147483647i)) ^ global3.c.c.zyz, abs(firstTrailingBit(~vec3<u32>(0u, u_input.c, u_input.c)))), _wgslsmith_dot_vec2_i32(select(-global3.c.c.yw, vec2<i32>(global3.c.c.x, func_3(Struct_5(vec4<f32>(-377f, 301f, 1000f, 2637f), 4294967295u, global3.c, 799i), Struct_4(Struct_1(var_1.x), Struct_1(16337u), global3.c), vec4<i32>(u_input.a, 0i, var_0.x, -1i))), any(!vec4<bool>(global2.x, global2.x, true, false))), -reverseBits(vec2<i32>(u_input.b, -2147483647i))), 433f);
}

