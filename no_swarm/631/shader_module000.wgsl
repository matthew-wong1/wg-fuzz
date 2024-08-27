struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 3>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<Struct_3, 19>;

var<private> global4: array<vec4<f32>, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global0.a, i32(-1i) * -1i, global0.a, global0.a);
    global2 = vec2<bool>(global2.x, global0.d.x);
    var var_1 = Struct_2(global2.x);
    let var_2 = select(min(vec3<u32>(~1u, ~_wgslsmith_add_u32(0u, 0u), max(~0u, 1u)), ~countOneBits(vec3<u32>(1u, 1u, 1u))), abs(vec3<u32>(1u, 1u, 1u)), vec3<bool>((_wgslsmith_f_op_f32(floor(404f)) > _wgslsmith_f_op_f32(-global0.b.x)) & global0.c.x, true & ((u_input.a.x ^ global0.a) >= 1i), false));
    var var_3 = global3[_wgslsmith_index_u32(15196u << (abs(var_2.x) % 32u), 19u)];
    var var_4 = Struct_1(_wgslsmith_sub_i32(2147483647i, global0.a) >> (1u % 32u), vec3<f32>(1117f, _wgslsmith_div_f32(-639f, 1403f), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-1621f + global0.b.x))), !(!vec2<bool>(any(vec2<bool>(false, var_1.a)), var_3.d.a)), !vec4<bool>(any(!global0.c), var_3.c >= select(118831u, var_2.x, false), false, _wgslsmith_mult_u32(var_3.b.x, 0u) >= _wgslsmith_add_u32(var_3.c, var_3.a)));
    var var_5 = var_3.d;
    var var_6 = var_4.b.x;
    global3 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(37104u);
}

