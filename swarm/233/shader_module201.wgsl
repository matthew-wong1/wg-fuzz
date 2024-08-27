struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec4<bool>(true, false, true, true)), Struct_4(vec4<bool>(false, false, true, false)), Struct_4(vec4<bool>(false, false, true, true)), Struct_4(vec4<bool>(false, false, true, true)), Struct_4(vec4<bool>(true, false, true, true)), Struct_4(vec4<bool>(true, false, false, true)), Struct_4(vec4<bool>(true, false, true, false)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(true, false, false, false)), Struct_4(vec4<bool>(true, true, false, true)), Struct_4(vec4<bool>(true, false, true, true)), Struct_4(vec4<bool>(true, true, true, true)), Struct_4(vec4<bool>(true, false, false, false)));

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(false, false, 0u, false, vec3<u32>(19714u, 2196u, 0u)), 25271i, Struct_2(Struct_1(false, true, 1u, false, vec3<u32>(110249u, 1u, 1u)), 1u)), Struct_3(Struct_1(true, true, 1u, false, vec3<u32>(0u, 7916u, 41905u)), -46009i, Struct_2(Struct_1(false, true, 0u, false, vec3<u32>(28560u, 6835u, 74999u)), 4294967295u)), Struct_3(Struct_1(false, false, 4294967295u, false, vec3<u32>(31409u, 4294967295u, 4294967295u)), 21269i, Struct_2(Struct_1(true, false, 1u, false, vec3<u32>(24192u, 3240u, 820u)), 33085u)), Struct_3(Struct_1(true, false, 2726u, true, vec3<u32>(1u, 20840u, 1u)), 2147483647i, Struct_2(Struct_1(true, true, 34940u, false, vec3<u32>(0u, 1u, 4294967295u)), 0u)), Struct_3(Struct_1(true, false, 63157u, true, vec3<u32>(28186u, 4294967295u, 4294967295u)), 1i, Struct_2(Struct_1(true, true, 31016u, false, vec3<u32>(1u, 14027u, 69968u)), 39424u)), Struct_3(Struct_1(true, false, 31479u, true, vec3<u32>(4294967295u, 62369u, 29133u)), 0i, Struct_2(Struct_1(false, false, 12815u, true, vec3<u32>(4294967295u, 1u, 32473u)), 13339u)), Struct_3(Struct_1(false, true, 4294967295u, false, vec3<u32>(40911u, 64470u, 49730u)), -1i, Struct_2(Struct_1(false, false, 4294967295u, false, vec3<u32>(4294967295u, 4294967295u, 8793u)), 58535u)), Struct_3(Struct_1(false, true, 0u, true, vec3<u32>(49474u, 1u, 29051u)), 0i, Struct_2(Struct_1(false, false, 80710u, false, vec3<u32>(100002u, 0u, 68001u)), 0u)));

var<private> global3: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(true, global3.x, ~(~max(u_input.d.x, u_input.c)), false, u_input.d), ~u_input.c);
    var var_1 = vec2<f32>(378f, _wgslsmith_f_op_f32(f32(-1f) * -1130f));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -705f) + vec2<f32>(1055f, -110f))))) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1000f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(920f, var_1.x)))) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-2021f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 220f))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x);
    let var_2 = -vec4<i32>(-2147483647i, _wgslsmith_div_i32(firstLeadingBit(u_input.b.x), 40317i) << (u_input.d.x % 32u), 46504i, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.e, 0i, -var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(2190f, 534f) + vec2<f32>(458f, 1154f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(159f, var_1.x)))));
}

