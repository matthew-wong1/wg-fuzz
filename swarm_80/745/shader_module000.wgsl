struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-707f, -64010i, vec3<u32>(40863u, 0u, 0u), vec4<i32>(12374i, -9223i, 17427i, -26121i), 4294967295u), Struct_1(720f, i32(-2147483648), vec3<u32>(24426u, 4294967295u, 4294967295u), vec4<i32>(1i, 46292i, -16300i, 2147483647i), 1u), Struct_1(1264f, -6057i, vec3<u32>(22996u, 0u, 14934u), vec4<i32>(-66185i, 25396i, i32(-2147483648), -1i), 74791u), Struct_1(1470f, 3009i, vec3<u32>(4294967295u, 58057u, 4294967295u), vec4<i32>(-1i, -1i, i32(-2147483648), -30855i), 1u), Struct_1(-629f, 2147483647i, vec3<u32>(4294967295u, 1u, 1u), vec4<i32>(2147483647i, -1i, -15836i, 40592i), 27469u), Struct_1(943f, -46740i, vec3<u32>(1u, 56616u, 4294967295u), vec4<i32>(-7901i, 46145i, 1i, -7037i), 4294967295u), Struct_1(733f, 3528i, vec3<u32>(0u, 0u, 0u), vec4<i32>(-9246i, 2147483647i, i32(-2147483648), 49975i), 3711u), Struct_1(-1203f, -33262i, vec3<u32>(30080u, 4294967295u, 4294967295u), vec4<i32>(19871i, -41599i, 32934i, -1i), 50929u), Struct_1(1765f, 2147483647i, vec3<u32>(48649u, 4294967295u, 0u), vec4<i32>(8150i, -28667i, 0i, 0i), 36193u), Struct_1(-608f, -53969i, vec3<u32>(218524u, 0u, 48548u), vec4<i32>(i32(-2147483648), 34495i, -1i, 58100i), 1u), Struct_1(-417f, 31580i, vec3<u32>(13387u, 5045u, 4294967295u), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i), 0u), Struct_1(371f, 2147483647i, vec3<u32>(15057u, 22214u, 68733u), vec4<i32>(i32(-2147483648), i32(-2147483648), -26362i, 1i), 4294967295u));

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(54610u, 0u, 1718u, 1u), vec4<u32>(4294967295u, 74508u, 0u, 0u), vec4<u32>(0u, 48712u, 0u, 0u), vec4<u32>(31819u, 1u, 4294967295u, 1u), vec4<u32>(7027u, 4294967295u, 11039u, 4294967295u), vec4<u32>(23470u, 4294967295u, 6350u, 41369u), vec4<u32>(4294967295u, 8456u, 10244u, 0u), vec4<u32>(0u, 79463u, 0u, 4294967295u), vec4<u32>(1877u, 23969u, 4294967295u, 4294967295u), vec4<u32>(10269u, 0u, 13754u, 10597u), vec4<u32>(4294967295u, 956u, 26442u, 4294967295u), vec4<u32>(35017u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(58997u, 0u, 1u, 68820u), vec4<u32>(4294967295u, 8263u, 4294967295u, 1u), vec4<u32>(25630u, 0u, 75467u, 0u), vec4<u32>(4294967295u, 4294967295u, 34385u, 1u), vec4<u32>(0u, 4125u, 51407u, 0u), vec4<u32>(40365u, 0u, 31027u, 0u), vec4<u32>(42977u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(0u, 0u, 16059u, 79863u), vec4<u32>(4294967295u, 59869u, 0u, 0u), vec4<u32>(1u, 33068u, 4294967295u, 17013u), vec4<u32>(0u, 0u, 1u, 14643u), vec4<u32>(1u, 4294967295u, 10188u, 20153u), vec4<u32>(61789u, 1u, 18093u, 6457u));

var<private> global2: vec2<f32>;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    let var_0 = u_input.a.x;
    global3 = vec2<bool>(any(vec3<bool>(!any(vec2<bool>(true, false)), true, global3.x)), all(!select(select(vec2<bool>(false, false), vec2<bool>(global3.x, false), true), select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(true, false)), -24666i != u_input.e)));
    let var_1 = !select(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), !(var_0 >= u_input.c.x)), !select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(true, global3.x, global3.x), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, true), global3.x)), any(select(!vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, false, false), !vec3<bool>(global3.x, false, true))));
    let var_2 = select(vec2<u32>(1u, ~(~(var_0 | var_0))), select(u_input.a, ~vec2<u32>(1u, abs(var_0)), var_1.zz), false);
    global4 = array<Struct_1, 18>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, _wgslsmith_f_op_f32(-global2.x), 450f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-308f, 1175f, -878f))))) + vec3<f32>(global2.x, global2.x, -1000f)) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(945f - _wgslsmith_div_f32(526f, global2.x)))), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) + _wgslsmith_f_op_f32(round(global2.x))), true)), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global2.x, i32(-1i) * -21256i);
}

