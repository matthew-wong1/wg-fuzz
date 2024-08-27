struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(7599i, 9337i), vec2<i32>(-5169i, -6869i), vec2<i32>(-13645i, 17849i));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: Struct_4;

var<private> global3: Struct_3 = Struct_3(-60223i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>) -> u32 {
    var var_0 = !select(!(!vec4<bool>(arg_1.x, true, global2.a, false)), !(!vec4<bool>(false, true, true, global2.b.a)), any(select(vec2<bool>(global2.b.a, global1.x), select(arg_1.wy, vec2<bool>(false, true), arg_1.ww), vec2<bool>(false, arg_1.x))));
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(max(global3.a, _wgslsmith_div_i32(global2.c.a, arg_0.a)), 0i, global3.a & ~(~(-2147483647i))), global3.a, -35289i, abs(30312i));
    var var_2 = global2.d.b;
    let var_3 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-(~(-1i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(33685i, global2.c.a, 13183i, -26077i), vec4<i32>(var_1.x, global2.c.a, global2.c.a, global2.c.a))), global0[_wgslsmith_index_u32(min(4294967295u, 1u), 3u)] >> (firstTrailingBit(vec2<u32>(u_input.a.x, 13969u)) % vec2<u32>(32u)));
    let var_4 = Struct_3(abs(_wgslsmith_sub_i32(-5762i, _wgslsmith_mult_i32(34470i, var_1.x | -6710i))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(_wgslsmith_sub_i32(global2.c.a, abs(38893i)));
    var var_0 = global2.c.a;
    global0 = array<vec2<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.a.x, func_1(global2.c, !(!vec4<bool>(global2.e.x, global1.x, global1.x, false))), 1u));
}

