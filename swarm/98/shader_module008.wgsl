struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(true, vec3<i32>(0i, 50387i, 34810i), vec4<i32>(-1i, -12556i, 1i, -3390i)), Struct_1(false, vec3<i32>(-4673i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -20899i, 76733i)), Struct_1(false, vec3<i32>(0i, -13440i, 1i), vec4<i32>(i32(-2147483648), 19729i, 2147483647i, -1i)), Struct_1(false, vec3<i32>(0i, 1238i, 0i), vec4<i32>(0i, -1i, -1i, 37997i)), Struct_1(true, vec3<i32>(-4232i, -20488i, 29602i), vec4<i32>(i32(-2147483648), 0i, 0i, 2895i)), Struct_1(true, vec3<i32>(-1i, -1i, 2147483647i), vec4<i32>(-1i, 2147483647i, 2147483647i, 26864i)), Struct_1(true, vec3<i32>(-62377i, -40898i, -1i), vec4<i32>(2147483647i, 2147483647i, -41829i, i32(-2147483648))), Struct_1(true, vec3<i32>(2147483647i, 28399i, 3481i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 45950i)), Struct_1(false, vec3<i32>(-31823i, 31896i, 69773i), vec4<i32>(1i, -15650i, i32(-2147483648), 31609i)), Struct_1(true, vec3<i32>(24697i, -74814i, -1i), vec4<i32>(15033i, 2147483647i, 0i, i32(-2147483648))), Struct_1(false, vec3<i32>(1i, -40213i, 18516i), vec4<i32>(49826i, -1i, -32375i, 2147483647i)), Struct_1(false, vec3<i32>(-8200i, -12199i, -20601i), vec4<i32>(2147483647i, 2147483647i, 0i, 29646i)), Struct_1(false, vec3<i32>(1i, 15537i, -1510i), vec4<i32>(-64352i, 927i, 0i, 51164i)), Struct_1(true, vec3<i32>(-38985i, 56601i, -1i), vec4<i32>(12061i, 29938i, i32(-2147483648), -14065i)), Struct_1(true, vec3<i32>(-60704i, 1i, i32(-2147483648)), vec4<i32>(26558i, -1020i, 11302i, 2147483647i)), Struct_1(false, vec3<i32>(7873i, 1i, i32(-2147483648)), vec4<i32>(-1i, 41540i, 9627i, -49244i)), Struct_1(true, vec3<i32>(42893i, 40360i, 24099i), vec4<i32>(2147483647i, 39496i, -10773i, -23104i)), Struct_1(true, vec3<i32>(65111i, 0i, 21407i), vec4<i32>(33733i, 16195i, -16867i, -32318i)), Struct_1(false, vec3<i32>(-57508i, 64531i, 1i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 24660i)), Struct_1(true, vec3<i32>(2147483647i, 1i, 1i), vec4<i32>(0i, 2147483647i, -531i, -29422i)), Struct_1(true, vec3<i32>(-21321i, 34605i, 44782i), vec4<i32>(2147483647i, -1i, 0i, i32(-2147483648))), Struct_1(false, vec3<i32>(-1i, 12068i, 1i), vec4<i32>(2147483647i, 2147483647i, 20478i, 0i)), Struct_1(true, vec3<i32>(-34716i, -62343i, 26619i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -18014i)), Struct_1(false, vec3<i32>(-18592i, 1132i, -1i), vec4<i32>(33974i, -195i, 8191i, 1i)), Struct_1(false, vec3<i32>(10674i, 0i, 38811i), vec4<i32>(2147483647i, 52364i, -1i, 2147483647i)), Struct_1(false, vec3<i32>(0i, -8787i, 3476i), vec4<i32>(-11787i, i32(-2147483648), 33597i, i32(-2147483648))));

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(!any(!vec4<bool>(global2.a, true, global2.a, global2.a)), true);
    let var_1 = 940f;
    global0 = array<vec4<u32>, 1>();
    let var_2 = 73784u;
    var var_3 = u_input.b.x;
    let var_4 = _wgslsmith_mult_i32(i32(-1i) * -30213i, 1i);
    let var_5 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(961f);
}

