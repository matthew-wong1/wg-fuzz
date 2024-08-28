struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
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

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec4<i32>(-1i, 9103i, 2147483647i, 2147483647i), Struct_1(1691f, vec2<i32>(49477i, 13387i), vec4<i32>(-77931i, i32(-2147483648), 28154i, 18272i))), Struct_3(vec4<i32>(1534i, 1204i, i32(-2147483648), 0i), Struct_1(-1000f, vec2<i32>(-1i, 0i), vec4<i32>(-7529i, i32(-2147483648), 0i, -1i))), Struct_3(vec4<i32>(0i, 57912i, 31126i, -30424i), Struct_1(1000f, vec2<i32>(35005i, -5010i), vec4<i32>(-45076i, i32(-2147483648), -36503i, 36384i))), Struct_3(vec4<i32>(-22778i, i32(-2147483648), -10575i, i32(-2147483648)), Struct_1(-100f, vec2<i32>(-1i, -66056i), vec4<i32>(49848i, 1i, -3211i, -8116i))), Struct_3(vec4<i32>(0i, 2147483647i, 2147483647i, 0i), Struct_1(435f, vec2<i32>(-47179i, -27285i), vec4<i32>(22067i, -11772i, 9900i, -6488i))), Struct_3(vec4<i32>(-1i, 35063i, -1i, -27761i), Struct_1(-853f, vec2<i32>(i32(-2147483648), -64377i), vec4<i32>(1i, 2147483647i, -37284i, -32913i))), Struct_3(vec4<i32>(2147483647i, 16944i, 2147483647i, -2345i), Struct_1(426f, vec2<i32>(-1i, i32(-2147483648)), vec4<i32>(77104i, -1i, 1i, 2147483647i))), Struct_3(vec4<i32>(0i, 9371i, 93357i, -51558i), Struct_1(606f, vec2<i32>(2147483647i, 9194i), vec4<i32>(1i, -1i, 14043i, -8085i))), Struct_3(vec4<i32>(38519i, 1i, 2147483647i, 1i), Struct_1(339f, vec2<i32>(6724i, i32(-2147483648)), vec4<i32>(0i, 0i, -16774i, 2147483647i))), Struct_3(vec4<i32>(0i, -11113i, -1i, -5632i), Struct_1(1495f, vec2<i32>(i32(-2147483648), 1i), vec4<i32>(-21397i, 10533i, 2147483647i, 2147483647i))), Struct_3(vec4<i32>(-40539i, 4175i, 0i, 2147483647i), Struct_1(223f, vec2<i32>(-40759i, -41160i), vec4<i32>(0i, -16135i, -35674i, 14740i))), Struct_3(vec4<i32>(i32(-2147483648), -53179i, 0i, 1i), Struct_1(-798f, vec2<i32>(-18350i, i32(-2147483648)), vec4<i32>(1550i, 2147483647i, i32(-2147483648), 8586i))), Struct_3(vec4<i32>(0i, 23129i, 9213i, i32(-2147483648)), Struct_1(1713f, vec2<i32>(7937i, 1i), vec4<i32>(-1i, 26509i, -20578i, 78358i))), Struct_3(vec4<i32>(22694i, i32(-2147483648), 3796i, -9572i), Struct_1(-518f, vec2<i32>(43043i, 18806i), vec4<i32>(-46i, i32(-2147483648), -1i, 2147483647i))), Struct_3(vec4<i32>(34707i, 6129i, 0i, -20667i), Struct_1(1829f, vec2<i32>(-7679i, 12057i), vec4<i32>(-10563i, 9800i, 5321i, i32(-2147483648)))), Struct_3(vec4<i32>(-1i, 21216i, 10109i, 0i), Struct_1(-1257f, vec2<i32>(0i, 48645i), vec4<i32>(13975i, -1i, 2147483647i, i32(-2147483648)))), Struct_3(vec4<i32>(37797i, 22377i, 31174i, 49722i), Struct_1(-407f, vec2<i32>(0i, 4833i), vec4<i32>(i32(-2147483648), 46448i, 2147483647i, 62061i))), Struct_3(vec4<i32>(-6171i, 35322i, 33581i, 38189i), Struct_1(195f, vec2<i32>(-1i, 15424i), vec4<i32>(i32(-2147483648), -1i, 18510i, 5487i))), Struct_3(vec4<i32>(-1i, 1i, 0i, -9296i), Struct_1(379f, vec2<i32>(1i, -26902i), vec4<i32>(-14954i, 65872i, 1i, 35283i))), Struct_3(vec4<i32>(-40323i, -1i, -32297i, -19104i), Struct_1(631f, vec2<i32>(-16346i, 38458i), vec4<i32>(-35506i, -1i, 28952i, 19268i))), Struct_3(vec4<i32>(-15848i, 0i, -51743i, 1682i), Struct_1(927f, vec2<i32>(1804i, 41521i), vec4<i32>(20206i, 1i, 0i, 36587i))), Struct_3(vec4<i32>(-17042i, i32(-2147483648), i32(-2147483648), 0i), Struct_1(1655f, vec2<i32>(2147483647i, 0i), vec4<i32>(2147483647i, 10346i, -22530i, -16824i))), Struct_3(vec4<i32>(0i, 2147483647i, -34443i, 1i), Struct_1(-1000f, vec2<i32>(-45153i, 15136i), vec4<i32>(0i, 1i, 1i, -29058i))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 23>();
    var var_0 = 235f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1538f)))) - -630f);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) * -577f)), _wgslsmith_f_op_f32(1f * -1272f), select(u_input.a << (31491u % 32u), ~u_input.a, true) == 36266i))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(1u, 1u, 1u)));
}

